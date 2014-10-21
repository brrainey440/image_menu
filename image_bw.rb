require "./image_array.rb"

img = ImageArray.new("./slowloris.jpg")

img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.red + pixel.blue + pixel.green)/3
		pixel.red = pixel_gray
		pixel.green = pixel_gray
		pixel.blue = pixel_gray
	end
end

img.write("./slowloris_bw.jpg")
