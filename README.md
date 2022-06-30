This is a simple website generated using the repository [mmistakes/minimal-mistakes](https://github.com/mmistakes/minimal-mistakes),
online at [https://mmistakes.github.io/minimal-mistakes/](https://mmistakes.github.io/minimal-mistakes/).

[Jekyll](https://jekyllrb.com/) framework integrated with github-pages is the core of this automatic scripts.

## Useful info

* Folder `/_pages`: .md files can be added and will appear in the Sitemap.
  * `home.md` is the main page opened by your portal.
  * `page-archive.html`, `sitemap.md`, `tag-archive.md`, `year-archive.md`, `archive-layout-with-content.md` and `404.md` will rarely needed to be modified. These are files that automatic filter some of your content.
* Folder `/_posts`: .md files are required starting with the same date template that is exemplified there.
* Navigation bar can be edit in `/_data/navigation.yml`
* The folder suggested for inserting your images is `/assets/images`


## [DEV-MODE] - Docker

Run `docker-compose up`, optionally dettached with `-d`.

If you need to build once more use `docker-compose build`.

`execBundleJekyllServe.sh` may need modification if not working with `minimal-mistakes-jekyll`.

## [DEV-MODE] - Running locally on Ubuntu 18.04
Packages install process is described at A1) and A2).

After these steps, command `./execBundleJekyllServe.sh` should be executed and localhost:4000 should direct to your portal.

On Ubutun 20.04 perhaps just did A2 is needed `gem install bundler jekyll` and 

### A1) Installing the correct ruby version

First step is to install the correct packages. Follow: [GoRails setup Ubuntu 18.04](https://gorails.com/setup/ubuntu/18.04)
[GoRails setup Ubuntu 20.04](https://gorails.com/setup/ubuntu/20.04)

```
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.7.2
rbenv global 2.7.2
ruby -v
```

### A2) Next steps are described at [Jekyll](https://jekyllrb.com/)

```
gem install bundler jekyll

jekyll new my-awesome-site

cd my-awesome-site

bundle exec jekyll serve

# => Now browse to http://localhost:4000
```
