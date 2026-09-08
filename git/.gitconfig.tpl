[user]
  name = Joshua Lusk
  email = luskjh@gmail.com
  signingkey = {{ op://Private/GitHub Signing Key/public key }}
[gpg]
  format = ssh
[commit]
  gpgsign = true
[alias]
  a  = add
  aa = add -A
  br = branch
  cl = clone
  cm = commit
  co = checkout
  d  = diff
  ds = diff --staged
  f  = fetch
  fa = fetch --all
  l  = log
  lo = log --oneline
  p  = push
  r  = remote
  pl = pull
  st = status
[core]
  pager =
[pull]
  rebase = true
[init]
  defaultBranch = main
