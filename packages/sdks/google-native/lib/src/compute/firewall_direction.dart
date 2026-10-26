import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirection implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirection(this.wireValue);
  @override
  final String wireValue;

  static FirewallDirection fromValue(String value) {
    for (final item in FirewallDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirection value: $value');
  }
}
