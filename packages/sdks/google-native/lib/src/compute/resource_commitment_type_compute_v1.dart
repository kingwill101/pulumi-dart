import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
enum ResourceCommitmentTypeComputeV1 implements pulumi.PulumiEnum<String> {
  accelerator("ACCELERATOR"),
  localSsd("LOCAL_SSD"),
  memory("MEMORY"),
  unspecified("UNSPECIFIED"),
  vcpu("VCPU");

  const ResourceCommitmentTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ResourceCommitmentTypeComputeV1 fromValue(String value) {
    for (final item in ResourceCommitmentTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceCommitmentTypeComputeV1 value: $value');
  }
}
