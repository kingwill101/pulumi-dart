import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Policy mode
enum OSPolicyModeOsconfigV1alpha implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyModeOsconfigV1alpha(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyModeOsconfigV1alpha fromValue(String value) {
    for (final item in OSPolicyModeOsconfigV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyModeOsconfigV1alpha value: $value');
  }
}
