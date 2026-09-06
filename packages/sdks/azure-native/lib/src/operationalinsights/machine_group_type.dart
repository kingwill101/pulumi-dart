import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the machine group
enum MachineGroupType implements pulumi.PulumiEnum<String> {
  valueUnknown("unknown"),
  valueAzureCs("azure-cs"),
  valueAzureSf("azure-sf"),
  valueAzureVmss("azure-vmss"),
  valueUserStatic("user-static");

  const MachineGroupType(this.wireValue);
  @override
  final String wireValue;

  static MachineGroupType fromValue(String value) {
    for (final item in MachineGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MachineGroupType value: $value');
  }
}
