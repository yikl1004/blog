#!/usr/bin/env sh

# 오류 발생시 중단
set -e

# 문서(md)를 build하여 html로 만든다
yarn docs:build

# build가 output된 폴더로 이동
cd .vuepress/dist

# https://<USERNAME>.github.io/<REPO> 에 배포하는 경우
# 필자는 이 경우에 해당한다.
git clone -b gh-pages https://github.com/yikl1004/blog.git

# .git의 내용을 복사한 후 clone은 삭제한다.
cp -rf blog/.git ./.git
rm -rf blog

# init + add + commit을 해준 다음
git add -A
git commit -m "deploy"

# https://<USERNAME>.github.io/<REPO> 에 배포하는 경우
# git push -f https://github.com/<USERNAME>/<REPO>.git master:gh-pages

git push origin gh-pages

cd -