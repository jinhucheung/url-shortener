# URL Shortener

Simple URL Shortener server by [Guillotine](https://github.com/technoweenie/guillotine)

## Install

```shell
git clone https://github.com/jinhucheung/url-shortener.git

cd url-shortener

./script/install.sh

vim config/datbase.yml    // update database settings

./script/migrate.sh
```

## Start

```shell
bundle exec unicorn -c config/unicorn.rb -D

curl http://localhost:3100 -i -F "url=http://git.com/url"
```

