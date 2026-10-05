import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirectionComputeBeta implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirectionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static FirewallDirectionComputeBeta fromValue(String value) {
    for (final item in FirewallDirectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirectionComputeBeta value: $value');
  }
}
