import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Policy mode
enum OSPolicyMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyMode(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyMode fromValue(String value) {
    for (final item in OSPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyMode value: $value');
  }
}
