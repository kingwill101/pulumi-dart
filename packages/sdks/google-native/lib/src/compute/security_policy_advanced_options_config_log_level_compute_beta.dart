import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta implements pulumi.PulumiEnum<String> {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta value: $value');
  }
}
