" Helper to source files local to init.vim
function! g:SourceLocal(relativePath)
    let root = fnamemodify(resolve(expand(stdpath('config')."/init.vim")), ':h')
    let fullPath = root . '/'. a:relativePath
    exec 'source ' . fullPath
endfunction

" Utilities and Helpers
call g:SourceLocal('util/util.vim')

" Scripting Language Providers
call g:SourceLocal('providers.vim')

" Common Configurations
call g:SourceLocal('common.vim')

" Common keybinds
call g:SourceLocal('keys.vim')

" Plugins
call g:SourceLocal('plugins/plugins.vim')

" Theme
call g:SourceLocal('themes/themes.vim')

" Swap, Undo, and Views
call g:SourceLocal('persist.vim')
