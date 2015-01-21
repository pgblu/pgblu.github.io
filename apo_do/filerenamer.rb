require 'pry'

my_path = '/Users/pgblu/Desktop/DBC_stuff/pgblu.github.io/apo_do/imgs/'

Dir.glob(my_path + "*").sort.each_with_index do |f, i|
  filename = File.basename(f, File.extname(f))
  newname = my_path + 'img'
  newname += sprintf("%#.3d", i + 8) + ".png"
  File.rename(f, newname)
end