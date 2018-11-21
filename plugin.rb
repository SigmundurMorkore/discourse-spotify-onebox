# name: Spotify Onebox Wrapper
# about: Wrap Spotify embed for insertion in Onebox
# version: 0.0.1
# authors: @SigmundurMorkore

class Onebox::Engine::SpotifyOnebox
    include Onebox::Engine


    REGEX = /https:\/\/(open.spotify.com)\/(track|playlist)\/((\w|-){22})/

    def id
        @url.match(REGEX)[3]
    end
 
    def type
        @url.match(REGEX)[2]
    end

    def placeholder_html
        "<div>PLACEHOLDER</div>"
    end

    def to_html
        "<iframe src=\"https://open.spotify.com/embed/#{type}/#{id}\" width=\"300\" height=\"80\" frameborder=\"0\" allowtransparency=\"true\" allow=\"encrypted-media\"></iframe>"
    end
end
