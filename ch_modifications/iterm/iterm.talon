app: iterm2
-
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
steffy: key(ctrl-shift-tab)
steppy: key(ctrl-tab)
make (durr | dear) <user.text>: 'mkdir {text}'

# shell scripts
restart voice recognition: 'restartTalonDragon'
restart talon: 'restartOnlyTalon'

# package managers
start (application | this | frontend): 'npm run start\n'
start galaxy: 'npm run dev -- -s -m'
(start | run) ios: 'npm run ios:dev'
(start | run) android: 'npm run android:dev'
start (mocked | mock): 'npm run start:mockedBackend'
(start | run) backend: 'SPRING_PROFILES_ACTIVE=development ./gradlew bootRun\n'
test (application | this | frontend): 'npm run test'
test settings: 'npm run setup:dev'
node install: 'npm i\n'
node (ron | run): 'npm run'
generate: 'npm run generate\n'

# General commands
exit: 
    key(ctrl-c)
    'exit'
cancel: key(ctrl-c)'
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
    'git commit -m'
    key(left)'
amend: 'git commit --amend'
simple commit: 'git add .  && git commit -m update  && git push'
clone: 
    'git clone'
    key(cmd-v)
push up: 'git push'
status: 
    'git status'
    key(enter)
(difference | did | dave): 'git diff'
pull down: 
    'git pull'
    key(enter)
(pull origin) | (origin master): 'git pull origin master'
add upstream: 'git remote add upstream'
fetch upstream: 'git fetch upstream'
fetch: 'git fetch'
remote: 'git remote -v'
check out: 'git checkout '
merge: 'git merge '
stash: 'git stash'
stash pop: 'git stash pop'
log: 'git log'
reset hard: 'git reset --hard'
go (to) master: 
    'git checkout master'
    key(enter)
reload submodule: 'git submodule deinit -f . && git submodule update --init'
remove untracked files: 'git clean -f'

# Docker
doc: 'docker'
doc status: 'docker ps -a'
doc images: 'docker images'
doc volumes: 'docker volume ls'
doc volume prune: 'docker volume prune'
doc system prune: 'docker system prune -a'
doc compose: 'docker-compose up -d'
doc compose down: 'docker-compose down'

# Knex:
( neck | nick ) migrate: 'knex migrate:latest'
( neck | nick ) rollback: 'knex migrate:rollback'
( neck | nick ) rollback all: 'knex migrate:rollback --all'
( neck | nick ) migrate (create | make): 'knex migrate:make '