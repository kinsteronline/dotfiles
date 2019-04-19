function fish_prompt

  set -l git_color (set_color 437019)
  set -l normal (set_color normal)

  set -l info (prompt_pwd)

  set -l repo_info (command git rev-parse --is-inside-git-dir --is-inside-work-tree HEAD 2>/dev/null)
  set -l in_work_tree $repo_info[2]
  set -l git_info ''

  if test "true" = "$in_work_tree"
    set -l refs (git symbolic-ref --quiet HEAD 2>/dev/null)
    set branch (string replace -r '^refs/heads/' '' $refs)

    set -l changed (git status -s --ignore-submodules=dirty 2>/dev/null)
    if test -n "$changed"
      set changed '✖️ '
    end

    set git_info " 🎢 $git_color$branch$changed$normal"
  end

  echo -ns $info $git_info ' 🍕 '
end

