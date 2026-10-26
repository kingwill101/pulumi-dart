import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta implements pulumi.PulumiEnum<String> {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta value: $value');
  }
}
