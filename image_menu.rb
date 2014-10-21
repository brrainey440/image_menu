puts "Hi, this is an image menu for selecting what you want to do with a picture. When asked file path, please choose slowloris1. thank you."


puts ("file path?")
file_path = gets.chomp

# open an image array at the given file path

while true
	puts "Effect? (bw, inv, multicolor, q to quit)"
	effect = gets.chomp

	if effect == "bw"
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

		# code to make the image array bw
	elsif effect =="inv"
		img.each do |rowtwo|
		rowtwo.each do |pixeltwo|
		pixelrow
		pixel.red = img.max_intensity - pixel.red
		pixel.blue = img.max_intensity - pixel.blue
		pixel.green = img.max_intensity - pixel.green
	
	end	# code to make the image array inv colors



img = ImageArray.new("./slowloris.jpg")

img.rows.times do |i|
        img.columns.times do |j|
                if (j < img.columns/2)
                        if (i < img.rows/2)
                                img[i][j].red = 0
                                img[i][j].green = 0
                        else
                                img[i][j].blue = 0
                                img[i][j].green = 0
                        end
                else
                        if (i < img.rows/2)
                                img[i][j].red = 0
                                img[i][j].blue = 0
                        else
                                img[i][j].green = 0
                                purple = (img[i][j].red + img[i][j].blue)/2
                                img[i][j].red = purple
                                img[i][j].blue = purple

                        end
                end
        end
end

img.write("./slowloris.jpg")
 end
		# code to make the image array blurry
	elsif effect == 'q'
		break
	else
		puts "Not a valid effect!"
	end
	# write the file back
end
