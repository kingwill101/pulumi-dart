import 'package:pulumi/pulumi.dart' as pulumi;

enum TeamStackPermissionScope implements pulumi.PulumiEnum<int> {
  read(101),
  edit(102),
  admin(103);

  const TeamStackPermissionScope(this.wireValue);
  @override
  final int wireValue;

  static TeamStackPermissionScope fromValue(int value) {
    for (final item in TeamStackPermissionScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TeamStackPermissionScope value: $value');
  }
}
