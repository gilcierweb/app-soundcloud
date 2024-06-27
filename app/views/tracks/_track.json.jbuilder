json.extract! track, :id, :name, :lyric, :audio, :album_id, :gender_id, :created_at, :updated_at
json.url track_url(track, format: :json)
json.audio url_for(track.audio)
