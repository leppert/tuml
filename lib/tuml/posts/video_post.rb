class Tuml
  class VideoPost < Post

    # Rendered for Video posts.
    block 'Video' do
      true
    end

    # Rendered if there is a caption for this post.
    block 'Caption'

    # The caption for this post.
    tag 'Caption' do
      data['caption']
    end

    [250,400,500,700].each do |width|
      tag "Video-#{width}" do
        data['player'].find {|p| p['width'] == width}['embed_code']
      end
      tag "VideoEmbed-#{width}" do
        data['player'].find {|p| p['width'] == width}['embed_code']
      end
    end

    tag "PlayCount"

    tag "FormattedPlayCount"

    tag "PlayCountWithLabel"

  end
end
