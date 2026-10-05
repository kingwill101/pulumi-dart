import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirectionComputeV1 implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirectionComputeV1(this.wireValue);
  @override
  final String wireValue;

  static FirewallDirectionComputeV1 fromValue(String value) {
    for (final item in FirewallDirectionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirectionComputeV1 value: $value');
  }
}
