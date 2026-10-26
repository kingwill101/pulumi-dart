import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyAdvancedOptionsConfigJsonParsing implements pulumi.PulumiEnum<String> {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsing(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsing fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigJsonParsing value: $value');
  }
}
