# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
def add_song(song,status)
	Song.create(song_name:song,status:status)
end

def list_song
	counter = 1
	puts "No.   Song Name   Played Status"
	Song.order('status').each do |song|
		puts counter.to_s + "  " + song.song_name + "  " + song.status
		puts ""
		counter +=1
	end
	return " "
end

def remove_song(id)
	songid = Song.order('status')[id-1]
	if songid
		songid.delete
	else
		p "Song number #{id} is not found. Are you sure this is the right song number?"
	end
end

def update(id,songname,status)
	songedit = Song.order('status')[id-1]
	if songedit
		songedit.song_name = songname
		songedit.status = status
		songedit.save
	else
		p "Song number #{id} is not found. Are you sure this is the right song number?"
	end
end

action = ARGV[0]
if action == "--add"
	add_song(ARGV[1..-2].join(" "),ARGV[-1])
elsif action == "--remove"
	remove_song(ARGV[1].to_i)
elsif action == "--list"
	list_song
elsif action == "--update"
	update(ARGV[1].to_i,ARGV[2..-2].join(""),ARGV[-1])
end


