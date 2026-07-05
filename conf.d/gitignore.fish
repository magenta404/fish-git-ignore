function _gitignore_install --on-event gitignore_install
  git config --global --unset alias.ignore
  git config --global alias.ignore '!f() { args=$@; fish --command "__gitignore $args"; }; f'
end

function _gitignore_uninstall --on-event gitignore_uninstall
  git config --global --unset alias.ignore
end
