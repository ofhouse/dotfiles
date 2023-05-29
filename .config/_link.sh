#!/usr/bin/env bash

##
# Link all files from `.config` to their local locations
##

set -euo pipefail

readonly PROJECT_PATH=$( cd $(dirname $0) ; cd ../; pwd -P )
readonly SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


source ${PROJECT_PATH}/common/utils.sh

main() {
  local overwrite_all=false backup_all=false skip_all=false
  config_dir=$SCRIPT_DIR
  echo "Linking files.."
  echo "Running in ${config_dir}"

  for src in $( find -H "$config_dir" -maxdepth 2 -name '*.symlink' -not -path '*.git*' )
  do
    rel_path=$( relativePath "$PROJECT_PATH" "$src" )
    dst="$HOME/${rel_path%.*}"

    echo "${src} -> ${dst}"
    linkFile "$src" "$dst"
  done
}

main $@
