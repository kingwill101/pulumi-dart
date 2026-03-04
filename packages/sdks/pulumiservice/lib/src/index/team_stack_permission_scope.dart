enum TeamStackPermissionScope {
  read(101),
  edit(102),
  admin(103);

  const TeamStackPermissionScope(this.wireValue);
  final double wireValue;

  static TeamStackPermissionScope fromValue(double value) {
    for (final item in TeamStackPermissionScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamStackPermissionScope value: $value');
  }
}
