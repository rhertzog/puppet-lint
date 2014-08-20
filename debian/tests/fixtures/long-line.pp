notify { 'something':
  message => 'this is a long line, it should be long enough to make puppet-lint say something about long lines.'
}
