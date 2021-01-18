10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Sed nunc augue, fermentum eu purus mollis, placerat ornare massa. 
		Nulla eleifend gravida lacus, id venenatis dolor ullamcorper id. Morbi 
		libero nunc, gravida id dui dictum, condimentum tincidunt arcu. Aliquam
		erat volutpat. Nunc ultricies pretium dolor, at interdum magna dignissim 
		id. Vivamus congue convallis ex, ut sodales risus maximus non. Etiam at dui 
		vitae dolor vehicula congue. Pellentesque sodales mi turpis, in porttitor 
		mi semper eu. Ut ut lectus ut enim ornare tincidunt vel ut sapien. Etiam 
		vehicula lacus ut accumsan tincidunt. Mauris eget felis massa. Morbi rhoncus
		non odio id laoreet. Nunc at scelerisque odio. Phasellus eu ornare neque."
	)
end

puts "10 blog post created!"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created!"


9.times do |portfolio_item|
	Portfolio.create!(
		title: "Porftolio title: #{portfolio_item}",
		subtitle: "My great service",
		body: "Maecenas ac felis nec dolor vulputate gravida ut ac est. Phasellus volutpat
		leo erat. Sed ante tellus, placerat in dignissim lacinia, placerat quis urna. Nulla 
		justo tortor, euismod ut nulla quis, scelerisque pellentesque sapien. Maecenas 
		vestibulum vulputate ex vel molestie. Nulla ut libero feugiat nisl commodo consectetur 
		vitae ut diam. Fusce volutpat dolor augue, et maximus sapien luctus ut. Interdum et 
		malesuada fames ac ante ipsum primis in faucibus. Mauris id bibendum magna, in tristique 
		tortor.

		Sed nunc augue, fermentum eu purus mollis, placerat ornare massa. Nulla eleifend gravida 
		lacus, id venenatis dolor ullamcorper id. Morbi libero nunc, gravida id dui dictum, 
		condimentum tincidunt arcu. Aliquam erat volutpat. Nunc ultricies pretium dolor, at 
		interdum magna dignissim id. Vivamus congue convallis ex, ut sodales risus maximus non. 
		Etiam at dui vitae dolor vehicula congue. Pellentesque sodales mi turpis, in porttitor 
		mi semper eu. Ut ut lectus ut enim ornare tincidunt vel ut sapien. Etiam vehicula lacus 
		ut accumsan tincidunt. Mauris eget felis massa. Morbi rhoncus non odio id laoreet. Nunc 
		at scelerisque odio. Phasellus eu ornare neque",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

puts "9 portfolio created!"