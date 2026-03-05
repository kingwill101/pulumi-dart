enum RbacPermission {
  read("environment:read"),
  readDecrypt("environment:read_decrypt"),
  open("environment:open"),
  write("environment:write"),
  delete("environment:delete"),
  clone("environment:clone"),
  rotate("environment:rotate");

  const RbacPermission(this.wireValue);
  final String wireValue;

  static RbacPermission fromValue(String value) {
    for (final item in RbacPermission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RbacPermission value: $value');
  }
}

