#!/usr/bin/env bash
set -e # halt script on error

echo 'Testing travis...'
bundle exec travis-lint
bundle exec jekyll build
bundle exec htmlproofer ./_site --allow-hash-href --http-status-ignore "0,403,999" --only-4xx --url-ignore "/linkedin.com/,/t.co/,/udemy.com/"
