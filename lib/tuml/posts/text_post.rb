class Tuml
  class TextPost < Post

    # Rendered for Text posts.
    block 'Text' do
      true
    end

    # Legacy support.
    block 'Regular' do
      true
    end

    # Rendered if there is a title for this post.
    block 'Title'

    # The title of this post.
    tag 'Title' do
      data['title']
    end

    # The content of this post.
    tag 'Body' do
      data['body']
    end

  end
end
