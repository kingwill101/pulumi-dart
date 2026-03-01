enum TeamStackPermissionScope {
  read(101),
  edit(102),
  admin(103);

  const TeamStackPermissionScope(this.value);
  final double value;

  static TeamStackPermissionScope fromValue(double value) {
    for (final item in TeamStackPermissionScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamStackPermissionScope value: $value');
  }
}

