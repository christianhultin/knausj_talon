app: iterm2
-
tag(): user.tabs
# shortcut projects:
go home: 'cd ~/'
go talon: 'cd ~/.talon/user'
go developer: 'cd ~/Developer'
go two point you: 'cd ~/Developer/TwoPointYou/'
go feedback: 'cd ~/Developer/Netlight/FrontEnd/feedback-client'
go sales client: 'cd ~/Developer/Netlight/FrontEnd/sales-client'
go sales backend: 'cd ~/Developer/Netlight/BackEnd/sales-api'
go (lough | laugh): 'cd ~/Developer/Netlight/FrontEnd/laf-client'
go galaxy: 'cd ~/Developer/milkywire/galaxy'
go voyager: 'cd ~/Developer/milkywire/voyager'
go (policy | bossy): 'cd ~/Developer/milkywire/bosse'
go milky: 'cd ~/Developer/milkywire'
go up: 'cd ..'

# iterm functionality
[toggle] full-screen: key(cmd-shift-enter)
split horizontal: key(cmd-shift-d)
split vertical: key(cmd-d)
(new tab | nippy): key(cmd-t)
next pane: key(ctrl-tab)
action(app.tab_previous): key(ctrl-shift-tab)
action(app.tab_next): key(ctrl-tab)
make (durr | dear) <user.text>: 'mkdir {text}'

# shell scripts
restart voice recognition: 'restartTalonDragon'
restart talon: 'restartOnlyTalon'

# package managers
start (application | this | frontend): 'npm run start'
test (application | this | frontend): 'npm run test'
node install: 'npm i'
node (ron | run): 'npm run'
generate: 'npm run generate'

start galaxy: 'npm run start:dev'
start galaxy big: 'npm run dev -- -s -m'
start enterprise: 'npm run dev'
start bossy: 'npm start'
(start | run) ios: 'npm run ios:dev'
(start | run) android: 'npm run android:dev'
start (mocked | mock): 'npm run start:mockedBackend'
(start | run) backend: 'SPRING_PROFILES_ACTIVE=development ./gradlew bootRun'
test settings: 'npm run setup:dev'

# General commands
exit: 
    key(ctrl-c)
    'exit'
cancel: key(ctrl-c)
clear: 
    key(ctrl-c)
    'clear'
    key(enter)
list: 
    'ls'
    key(enter)
list more: 
    'ls -a'
    key(enter)
search: key(ctrl-r)
slap: key(enter)

# Git
add: 'git add '
add all: 'git add .'
commit: 
    'gcmsg ""'
    key(left)
amend: 'git commit --amend'
simple commit: 'git add .  && git commit -m "update"  && git push'
clone: 
    'git clone '
    key(cmd-v)
push up: 'git push'
status: 
    'gst'
    key(enter)
(difference | did | dave): 'git diff'
pull down: 
    'git pull'
    key(enter)
(pull origin) | (origin master): 'git pull origin master'
# add upstream: 'git remote add upstream'
fetch upstream: 'git fetch upstream'
fetch: 'git fetch'
remote: 'git remote -v'
check out: 'gco '
new branch: 
    'gco -b ""'
    key(left)
merge: 'git merge '
stash: 'git stash'
stash pop: 'git stash pop'
log: 'glog'
reset hard: 'git reset --hard'
go (to) master: 
    'gcm'
    key(enter)
reload submodule: 'git submodule deinit -f . && git submodule update --init'
remove untracked files: 'git clean -f'
push upstream: 'gpsup'

# Docker
doc: 'docker'
doc status: 'docker ps -a'
doc images: 'docker images'
doc volumes: 'docker volume ls'
doc volume prune: 'docker volume prune'
doc system prune: 'docker system prune -a'
doc prune all: 'docker-compose down && docker volume prune  && docker system prune -a && docker-compose up -d && npm run setup:dev'
doc compose$: 'docker-compose up -d'
doc compose down: 'docker-compose down'

# Knex:
( neck | nick ) migrate: 'knex migrate:latest'
( neck | nick ) rollback: 'knex migrate:rollback'
( neck | nick ) rollback all: 'knex migrate:rollback --all'
( neck | nick ) migrate (create | make): 'knex migrate:make '