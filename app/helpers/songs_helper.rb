module SongsHelper
	def artist_selector
		if params[:artist_id].nil?
			select_tag "song_artist_id", options_from_collection_for_select(Artist.all, :id, :name)
		else
			hidden_field_tag "song[artist_id]", @song.artist
		end
	end
end
