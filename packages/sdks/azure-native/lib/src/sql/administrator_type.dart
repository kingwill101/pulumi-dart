import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the sever administrator.
enum AdministratorType implements pulumi.PulumiEnum<String> {
  valueActiveDirectory("ActiveDirectory");

  const AdministratorType(this.wireValue);
  @override
  final String wireValue;

  static AdministratorType fromValue(String value) {
    for (final item in AdministratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdministratorType value: $value');
  }
}
