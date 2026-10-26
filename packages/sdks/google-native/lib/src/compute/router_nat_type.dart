import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatType implements pulumi.PulumiEnum<String> {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatType(this.wireValue);
  @override
  final String wireValue;

  static RouterNatType fromValue(String value) {
    for (final item in RouterNatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatType value: $value');
  }
}
