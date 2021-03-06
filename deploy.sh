# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下
cd dist

git add -A
git commit -m 'merge dev'

# push
git push

# 部署到 github
git push -f https://github.com/niexias/vue-element-admin.git master:gh-pages

cd -