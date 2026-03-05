/// Mode for updating the instance.
enum UpdatePolicyModeAlloydbV1beta {
  modeUnspecified("MODE_UNSPECIFIED"),
  default_("DEFAULT"),
  forceApply("FORCE_APPLY");

  const UpdatePolicyModeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static UpdatePolicyModeAlloydbV1beta fromValue(String value) {
    for (final item in UpdatePolicyModeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdatePolicyModeAlloydbV1beta value: $value');
  }
}

