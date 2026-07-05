# Completions for the command itself
complete \
  --command 'git' \
  --arguments ignore \
  --description '.gitignore generator using gitignore.io' \
  --condition '__fish_use_subcommand' \
  --no-files

complete \
  --command 'git' \
  --condition '__fish_seen_subcommand_from ignore git' \
  --arguments 'list' \
  --description 'List all templates' \
  --no-files

# TODO: filter out selected
# Completions for the command's parameters
complete \
  --command 'git' \
  --condition '__fish_seen_subcommand_from ignore git' \
  --arguments "(git ignore list | string split ',')" \
  --no-files
