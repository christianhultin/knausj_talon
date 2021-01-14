mode: user.javascript
mode: user.typescript
mode: command
code.language: javascript
code.language: typescript
-
# Use this for any missing elements unti they're added
(tag | ellie) html: '<html>'
(tag | ellie) title: '<title>'
(tag | ellie) head: '<head>'
(tag | ellie) body: '<body>'

(tag | ellie) header: '<header>'
(tag | ellie) open header: '<header>'
(tag | ellie) close header: '</header>'

(tag | ellie) main: '<main>'
(tag | ellie) open main: '<main>'
(tag | ellie) close main: '</main>'

(tag | ellie) article: '<article>'
(tag | ellie) open article: '<article>'
(tag | ellie) close article: '</article>'

(tag | ellie) footer: '<footer>'
(tag | ellie) open footer: '<footer>'
(tag | ellie) close footer: '</footer>'

(tag | ellie) div: '<div>'
(tag | ellie) open div: '<div>'
(tag | ellie) close div: '</div>'

(tag | ellie) span: '<span>'
(tag | ellie) open span: '<span>'
(tag | ellie) close span: '</span>'

#  parse_words_as_integer doesn't seem to work so we'll do it the bad way for now
# (tag | ellie) heading <dgndictation>: ['<h' parse_words_as_integer '></h' parse_words_as_integer '>']
(tag | ellie) heading one: '<h1>'
(tag | ellie) heading two: '<h2>'
(tag | ellie) heading three: '<h3>'
(tag | ellie) heading four: '<h4>'
(tag | ellie) heading five: '<h5>'
(tag | ellie) heading six: '<h6>'

((tag | ellie) paragraph | (tag | ellie) pee): '<p>'

((tag | ellie) yule | (tag | ellie) un-list | (tag | ellie) un-ordered list): '<ul>'
((tag | ellie) open un-ordered list | (tag | ellie) open un-list): '<ul>'
((tag | ellie) close un-ordered list | (tag | ellie) close un-list): '</ul>'

((tag | ellie) list item | (tag | ellie) lie): '<li>'
((tag | ellie) open list item | (tag | ellie) open lie): '<li>'
((tag | ellie) close list item | (tag | ellie) close lie): '</li>'

(tag | ellie) link: '<a href="" alt="">'
(tag | ellie) open link: '<a href="'
(tag | ellie) close link: ''

(tag | ellie) image: '<img src="'

(tag | ellie) her: '<hr>'
(tag | ellie) burr: '<br>'