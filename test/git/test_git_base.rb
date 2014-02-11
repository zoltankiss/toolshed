require 'helper'

def create_and_checkout_branch(name, branch_from='master')
  save_stash
  cb = `git checkout -b #{name} origin/#{branch_from} --quiet`
end

def pop_stash
  stash = `git stash pop --quiet`
end

def save_stash
  stash = `git stash save --quiet`
end

def delete_branch(branch_name)
  db = `git branch -D #{branch_name} --quiet`
end
