setlocal expandtab
setlocal shiftwidth=2
setlocal tabstop=2

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= ' | setlocal expandtab< shiftwidth< tabstop<'
else
  let b:undo_ftplugin = 'setlocal expandtab< shiftwidth< tabstop<'
endif

let b:ale_fix_on_save = 1
let b:ale_fixers = ['prettier']