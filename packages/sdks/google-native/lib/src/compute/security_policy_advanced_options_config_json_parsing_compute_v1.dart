import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 implements pulumi.PulumiEnum<String> {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 value: $value');
  }
}
