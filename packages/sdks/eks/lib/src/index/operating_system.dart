import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of EKS optimized Operating System to use for node groups.
///
/// See for more details:
/// https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-amis.html
enum OperatingSystem implements pulumi.PulumiEnum<String> {
  aL2("AL2"),
  aL2023("AL2023"),
  bottlerocket("Bottlerocket"),
  rECOMMENDED("AL2023");

  const OperatingSystem(this.wireValue);
  @override
  final String wireValue;

  static OperatingSystem fromValue(String value) {
    for (final item in OperatingSystem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystem value: $value');
  }
}
