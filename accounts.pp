@user { 'alice':
  uid => 1000,
  gid => 'users',
}

@user { 'bob':
  uid => 1001,
  gid => 'users',
}

realize(User['alice'])
