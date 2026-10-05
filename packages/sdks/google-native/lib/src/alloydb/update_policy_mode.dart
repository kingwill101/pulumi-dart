import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode for updating the instance.
enum UpdatePolicyMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  default_("DEFAULT"),
  forceApply("FORCE_APPLY");

  const UpdatePolicyMode(this.wireValue);
  @override
  final String wireValue;

  static UpdatePolicyMode fromValue(String value) {
    for (final item in UpdatePolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdatePolicyMode value: $value');
  }
}
