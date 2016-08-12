# jessconf.org

Source code for the JessConf website.

> forked from the awesome
[KatieConf](https://github.com/KatieConf/katieconf.github.io)

Tech stack:
 - skeleton template
 - [hugo](https://gohugo.io)
 - [Netlify Static site hosting](https://www.netlify.com/)
 - .org domain
 - Let's Encrypt SSL

## Contributing

### Adding a Jess

Edit [config.toml](config.toml) and add your self under the last
`[[params.speakers.person]]` with your information like so below:

```toml
[[params.speakers.person]]
  name = "Jessica Jones"
  img = "jessjones.jpg"
  twitter = "jessjones"
  talkTitle = "How I beat Kilgrave"
  talkLink = "https://www.youtube.com/watch?v=ajsdfhbasdf"
```

Add your image to the `static/img/speakers/` directory.

When you open a pull request [netlify](https://netlify.com) will build your
branch and then you will be able to view the changes to the site **IN** your
pull request via a
[deploy preview](https://www.netlify.com/blog/2016/07/20/introducing-deploy-previews).


#### Social Media

 - Have `@JessConf` follow new listing
 - Append talk to YouTube playlist (or add note to description if non YT link)
 - Tweet out nice things <3

