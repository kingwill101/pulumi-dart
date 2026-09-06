import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application lock level.
enum ApplicationLockLevel implements pulumi.PulumiEnum<String> {
  valueCanNotDelete("CanNotDelete"),
  valueReadOnly("ReadOnly"),
  valueNone("None");

  const ApplicationLockLevel(this.wireValue);
  @override
  final String wireValue;

  static ApplicationLockLevel fromValue(String value) {
    for (final item in ApplicationLockLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationLockLevel value: $value');
  }
}
