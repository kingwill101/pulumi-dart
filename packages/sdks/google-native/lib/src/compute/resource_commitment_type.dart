import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
enum ResourceCommitmentType implements pulumi.PulumiEnum<String> {
  accelerator("ACCELERATOR"),
  localSsd("LOCAL_SSD"),
  memory("MEMORY"),
  unspecified("UNSPECIFIED"),
  vcpu("VCPU");

  const ResourceCommitmentType(this.wireValue);
  @override
  final String wireValue;

  static ResourceCommitmentType fromValue(String value) {
    for (final item in ResourceCommitmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceCommitmentType value: $value');
  }
}
