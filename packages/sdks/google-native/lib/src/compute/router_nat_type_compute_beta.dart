import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatTypeComputeBeta implements pulumi.PulumiEnum<String> {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterNatTypeComputeBeta fromValue(String value) {
    for (final item in RouterNatTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatTypeComputeBeta value: $value');
  }
}
