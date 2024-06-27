json.extract! album, :id, :itle, :description, :release, :cover, :cover_back, :rating, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
json.cover url_for(album.cover)
json.cover_back url_for(album.cover_back)
