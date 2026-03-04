enum NodeGroupRolesItem {
  roleUnspecified("ROLE_UNSPECIFIED"),
  driver("DRIVER");

  const NodeGroupRolesItem(this.wireValue);
  final String wireValue;

  static NodeGroupRolesItem fromValue(String value) {
    for (final item in NodeGroupRolesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupRolesItem value: $value');
  }
}
