import 'package:pulumi/pulumi.dart' as pulumi;

/// The access level allowed for the users in this key set.
enum BareMetalMachineKeySetPrivilegeLevel implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueSuperuser("Superuser");

  const BareMetalMachineKeySetPrivilegeLevel(this.wireValue);
  @override
  final String wireValue;

  static BareMetalMachineKeySetPrivilegeLevel fromValue(String value) {
    for (final item in BareMetalMachineKeySetPrivilegeLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalMachineKeySetPrivilegeLevel value: $value');
  }
}
