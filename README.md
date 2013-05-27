## Usage

template = Tuml::Template.new 'my_template_string'
context = Tuml::TextPost.new 'title' => 'My Post Title', 'body' => 'My post body'
template.render context
