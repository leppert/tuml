## Usage

```ruby
template = Tuml::Template.new('my_template_string')

# Render a page
page = Tuml::IndexPage.new('title' => 'Page Title', 'description' => 'Page Description', 'posts' => [{'type' => 'text', 'title' => 'Post Title', 'body' => 'Post body.'}])
template.render(page)

# Render a post
post = Tuml::TextPost.new('title' => 'My Post Title', 'body' => 'My post body')
template.render(post)
```
