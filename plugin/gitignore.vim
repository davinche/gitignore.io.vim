let s:supported = ['actionscript','ada','agda','android','appceleratortitanium','appcode','archives','archlinuxpackages','autotools','bancha','basercms','bower','bricxcc','c','c++','cakephp','cfwheels','chefcookbook','clojure','cloud9','cmake','codeigniter','codekit','commonlisp','compass','composer','concrete5','coq','cvs','dart','darteditor','delphi','django','dotsettings','dreamweaver','drupal','eagle','eclipse','elasticbeanstalk','elisp','elixir','emacs','ensime','episerver','erlang','espresso','expressionengine','fancy','finale','flexbuilder','forcedotcom','freepascal','fuelphp','gcov','go','gradle','grails','gwt','haskell','intellij','java','jboss','jekyll','jetbrains','joe','joomla','justcode','jython','kate','kdevelop4','kohana','komodoedit','laravel','latex','lazarus','leiningen','lemonstand','lilypond','linux','lithium','magento','matlab','maven','mercurial','meteor','modelsim','monodevelop','nanoc','netbeans','node','notepadpp','objective-c','ocaml','opa','opencart','openfoam','oracleforms','osx','perl','ph7cms','phpstorm','playframework','plone','prestashop','processing','pycharm','python','qooxdoo','qt','quartus2','r','rails','redcar','rhodesrhomobile','ros','ruby','rubymine','rubymotion','sass','sbt','scala','scrivener','sdcc','seamgen','senchatouch','silverstripe','sketchup','stella','sublimetext','sugarcrm','svn','symfony','symfony2','symphonycms','tags','target3001','tarmainstallmate','tasm','tex','textmate','textpattern','turbogears2','typo3','unity','vagrant','vim','virtualenv','visualstudio','vvvv','waf','wakanda','webmethods','webstorm','windows','wordpress','xamarinstudio','xcode','xilinxise','yeoman','yii','zendframework']

function s:autocomplete(A, C, P)
    let l:copy = copy(s:supported)
    return filter(l:copy, 'len(matchlist(v:val, "^".a:A)) > 0')
endfunction

command! -nargs=+ -complete=customlist,s:autocomplete Gitignore call gitignore#execute(<f-args>)
