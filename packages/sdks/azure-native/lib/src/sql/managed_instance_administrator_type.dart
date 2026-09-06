import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the managed instance administrator.
enum ManagedInstanceAdministratorType implements pulumi.PulumiEnum<String> {
  valueActiveDirectory("ActiveDirectory");

  const ManagedInstanceAdministratorType(this.wireValue);
  @override
  final String wireValue;

  static ManagedInstanceAdministratorType fromValue(String value) {
    for (final item in ManagedInstanceAdministratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceAdministratorType value: $value');
  }
}
