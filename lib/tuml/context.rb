class Tuml
  class Context

    attr_reader :data

    attr_accessor :parent

    def self.prototype
      @prototype ||= superclass.prototype.clone rescue {}
    end

    def self.tag(name, &blk)
      prototype[name.to_s] = block_given? ? blk : -> {data[name]}
    end

    def self.block(name, klass=nil, &blk)
      prototype["block:#{name}"] = block_given? ? blk : -> {tag_isnt_blank(name)}
    end

    def initialize(data)
      @data = data
    end

    def find(name)
      method = self.class.prototype[name.to_s]
      if method
        instance_exec &method
      elsif parent
        parent.find(name)
      end
    end

    def tag_isnt_blank name
      tag = find(name)
      not (tag.nil? || tag.blank?)
    end

    def block(name)
      find("block:#{name}")
    end

    # TODO: Rename this method
    def raw_block(name)
      data["block:#{name}"] || []
    end

  end
end
