require "./image_array.rb"

img = ImageArray.new("./slowloris.jpg")

#go through the array, then row, then pixel
img.each do |row|
	row.each do |pixel|
		red = pixel.red
		green = pixel.green

		pixel.red = blue
		pixel.green = red

	end
end


img.write("./slowloris_bw.jpg")
