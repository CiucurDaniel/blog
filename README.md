# My blog

Hello everyone, this is my personal blog.


# Requirements

```bash
go version   # go version go1.20.4 darwin/arm64
hugo version # hugo v0.114.1+extended darwin/arm64 BuildDate=unknown
```

TODO: Create devcontainer for future ease of use.

# Generate blog 

```bash
# Generate new blog
hugo new site blog

# Add a theme (you can either clone it under themes or add it as a submodule)
cd blog
git clone https://github.com/hugo-sid/hugo-blog-awesome.git themes/hugo-blog-awesome
git submodule add  https://github.com/hugo-sid/hugo-blog-awesome.git themes/hugo-blog-awesome

# Use theme by adding it to config file
cd blog && echo "theme = 'hugo-blog-awesome'" >> hugo.toml

# Start localhost server with the blog
hugo server

# open http://localhost:1313/
```