class Tuml
  class AudioPost < Post

    # Rendered for Audio posts.
    block 'Audio' do
      true
    end

    # Rendered if there is a caption for this post.
    block 'Caption'

    # The caption for this post.
    tag 'Caption' do
      data['caption']
    end

    block 'AudioEmbed'

    tag 'AudioEmbed' do
      data['player']
    end

    [250, 400, 500, 640].each do |n|
      tag "AudioEmbed-#{n}" do
        data['player']
      end
    end

    block 'AudioPlayer' do
      !tag_isnt_blank('AudioEmbed') && tag_isnt_blank('AudioPlayer')
    end

    # Default audio player.
    tag 'AudioPlayer' do
      data['player']
    end

    # White audio player.
    tag 'AudioPlayerWhite' do
      data['player']
    end

    # Grey audio player.
    tag 'AudioPlayerGrey' do
      # TODO E4E4E4
      data['player']
    end

    # Black audio player.
    tag 'AudioPlayerBlack' do
      # TODO 000000
      data['player']
    end

    # URL for this post's audio file. iPhone Themes only.
    tag 'RawAudioURL' do
      # TODO: Extract from data['player']
    end

    block 'PlayerCount'

    # The number of times this post has been played.
    tag 'PlayCount' do
      data['plays']
    end

    # The number of times this post has been played, formatted with commas.
    # Returns '12,309' for example.
    tag 'FormattedPlayCount'

    # The number of times this post has been played, formatted with commas
    # and pluralized label. Returns "12,309 plays" for example.
    tag 'PlayCountWithLabel'

    # Rendered if this post uses an externally hosted MP3. (Useful for
    # adding a "Download" link)
    block 'ExternalAudio' do
      tag_isnt_blank('ExternalAudioURL')
    end

    # The external MP3 URL, if this post uses an externally hosted MP3.
    tag 'ExternalAudioURL'

    # Rendered if this audio file's ID3 info contains album art.
    block 'AlbumArt' do
      tag_isnt_blank('AlbumArtURL')
    end

    # The album art URL, if this audio file's ID3 info contains album art.
    tag 'AlbumArtURL' do
      data['album_art']
    end

    # Rendered if this audio file's ID3 info contains the artist name.
    block 'Artist'

    # The track's artist's name extracted from the file's ID3 info.
    tag 'Artist' do
      data['artist']
    end

    # Rendered if this audio file's ID3 info contains the album title.
    block 'Album'

    # The name of the track's album extracted from the file's ID3 info.
    tag 'Album' do
      data['album']
    end

    # Rendered if this audio file's ID3 info contains the track name.
    block 'TrackName'

    # The track's name extracted from the file's ID3 info.
    tag 'TrackName' do
      data['track_name']
    end

  end
end
