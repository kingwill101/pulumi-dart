import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatTypeComputeV1 implements pulumi.PulumiEnum<String> {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterNatTypeComputeV1 fromValue(String value) {
    for (final item in RouterNatTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatTypeComputeV1 value: $value');
  }
}
