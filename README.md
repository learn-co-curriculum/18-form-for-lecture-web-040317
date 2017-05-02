# Student Lister

## Today's Topics

1. form_for
2. validations
3. associations


```ruby
def make_link_to(body, path)
  if path.class != String
    path = "/#{path.class.to_s.downcase.pluralize}/#{path.id}"
  end
  "<a href='#{path}'>#{body}</a>".html_safe
end
```

```erb
<%= make_link_to @student.email, "/students/#{@student.id}"%>
<%= make_link_to @student.email, @student %>
```
