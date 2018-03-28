def visible?(screen, image)
 return true unless screen.exists("#{image}").class.eql?(Java::OrgSikuliScript::Match) != true
end

def view_visible?(screen, image_array)
  image_array.map {|image| visible?(screen,image)}
end

def flatten_table(cucumber_data_table)
  cucumber_data_table.raw.flatten
end

def check_expected_views(cucumber_data_table)
  flatten_table(cucumber_data_table).map {|view| send("#{view.gsub(' ', '_')}").view}.flatten
end
