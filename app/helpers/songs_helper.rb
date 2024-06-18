module SongsHelper
    def find_youtube_url(youtube_url)
        if youtube_url[0..16] == "https://youtu.be/"
            return youtube_url[17..27]
        else
            return youtube_url[32..42]
        end
    end
end
