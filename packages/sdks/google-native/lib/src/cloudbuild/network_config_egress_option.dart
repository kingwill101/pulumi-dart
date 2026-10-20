import 'package:pulumi/pulumi.dart' as pulumi;

/// Option to configure network egress for the workers.
enum NetworkConfigEgressOption implements pulumi.PulumiEnum<String> {
  egressOptionUnspecified("EGRESS_OPTION_UNSPECIFIED"),
  noPublicEgress("NO_PUBLIC_EGRESS"),
  publicEgress("PUBLIC_EGRESS");

  const NetworkConfigEgressOption(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigEgressOption fromValue(String value) {
    for (final item in NetworkConfigEgressOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigEgressOption value: $value');
  }
}
