import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
enum ResourceCommitmentTypeComputeBeta implements pulumi.PulumiEnum<String> {
  accelerator("ACCELERATOR"),
  localSsd("LOCAL_SSD"),
  memory("MEMORY"),
  unspecified("UNSPECIFIED"),
  vcpu("VCPU");

  const ResourceCommitmentTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ResourceCommitmentTypeComputeBeta fromValue(String value) {
    for (final item in ResourceCommitmentTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceCommitmentTypeComputeBeta value: $value');
  }
}
