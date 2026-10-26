import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyAdvancedOptionsConfigLogLevel implements pulumi.PulumiEnum<String> {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevel(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigLogLevel fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigLogLevel value: $value');
  }
}
