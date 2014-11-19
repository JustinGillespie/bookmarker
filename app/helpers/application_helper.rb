module ApplicationHelper

	def icon(name)
		content_tag :i, nil, class: "fa fa-#{name}"
	end

end
