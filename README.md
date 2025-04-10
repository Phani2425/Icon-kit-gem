# IconKit

**IconKit** is a lightweight, flexible SVG icon system for Rails applications. It includes over 40 beautifully crafted SVG icons with customizable size, color, and styling options. Easily render icons in your views with no external dependencies.

---

## ✨ Features

- Over 40 built-in SVG icons
- Fully customizable via helper options
- Tailwind CSS compatible
- Easily extendable with custom icons and icon packs
- Lightweight Rails Engine gem

---

## 📦 Installation

Add IconKit to your Gemfile:

```ruby
gem 'icon_kit'
```

Then run:

```bash
$ bundle install
```

---

## 🚀 Usage

Use the `icon_tag` helper in your views:

```erb
<%= icon_tag(:building) %>
<%= icon_tag(:check, size: "w-6 h-6", color: "text-green-500") %>
<%= icon_tag(:warning, class: "inline mr-2", color: "#FF0000") %>
```

### 🔧 Configuration

Create an initializer to set default size and color:

```ruby
# config/initializers/icon_kit.rb
IconKit.configure do |config|
  config.default_size = "w-4 h-4"
  config.default_color = "#333333"
end
```

---

## 🧰 Available Icons

IconKit includes a variety of useful icons, including but not limited to:

- `:building` – Office or structure
- `:plus` – Add
- `:money` – Currency or finance
- `:print` – Printer
- `:chart` – Data visualization
- `:check` – Confirmation
- `:trash` – Delete
- `:edit` – Edit content
- `:calendar`, `:document`, `:view`, `:clipboard`, `:user`, `:email`, `:lock`, `:phone`, `:filter`, `:home`, `:info`, `:error_circle`, `:success_check`, and more...

---

## 💡 Advanced Usage

### Tailwind CSS Integration

IconKit works seamlessly with Tailwind:

```erb
<%= icon_tag(:check, size: "w-5 h-5", class: "text-green-500 hover:text-green-700 transition-all") %>
```

### Creating Button Components

```erb
<%= button_to "Create New", new_record_path, class: "btn btn-primary" do %>
  <%= icon_tag(:plus, class: "mr-1 inline-block") %>
  Create New
<% end %>
```

### Dynamic Icons

```erb
<%= icon_tag(item.complete? ? :check : :clock, color: item.complete? ? "green" : "orange") %>
```

---

## ➕ Extending IconKit

### Adding Custom Icons

```ruby
# app/helpers/custom_icons_helper.rb
module CustomIconsHelper
  def icon_tag(name, options = {})
    case name
    when :custom_icon
      content_tag(:svg, class: "#{options[:size] || IconKit.default_size} #{options[:class]}", fill: "none", stroke: options[:color] || IconKit.default_color, viewBox: "0 0 24 24") do
        content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 4v16m8-8H4")
      end
    else
      super
    end
  end
end

# In an initializer
IconKit::IconsHelper.prepend CustomIconsHelper
```

### Creating Icon Packs

```ruby
# app/helpers/social_icons_helper.rb
module SocialIconsHelper
  def social_icon_tag(platform, options = {})
    case platform
    when :twitter
      icon_tag(:twitter, options)
    when :facebook
      icon_tag(:facebook, options)
    # More social icons...
    end
  end
end
```

---

## 🛠 Troubleshooting

- **Icons not showing**: Ensure the gem is required properly and helpers are available.
- **Helper not found**: Check that `IconKit::IconsHelper` is correctly loaded.
- **Styling issues**: Double-check the `size`, `color`, or `class` options for compatibility with your CSS framework (e.g., Tailwind).

---

## 🤝 Contributing

1. Fork the repo
2. Create your branch: `git checkout -b my-feature`
3. Commit your changes: `git commit -am 'Add feature'`
4. Push the branch: `git push origin my-feature`
5. Create a Pull Request

---

## 📄 License

IconKit is open-sourced under the [MIT license](./MIT-LICENSE).

