/// Defined in CVSS v3
enum CVSSUserInteractionContaineranalysisV1alpha1 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteractionContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSUserInteractionContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSUserInteractionContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteractionContaineranalysisV1alpha1 value: $value');
  }
}

