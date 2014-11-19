json.bundle do
	json.extract! @bundle, :id, :name
	json.tags @bundle.tag_list
	json.links @bundle.links do |link|
		json.name link.name
		json.url link.url
	end
end

