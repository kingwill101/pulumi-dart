import 'package:pulumi/pulumi.dart' as pulumi;

/// Defined in CVSS v3
enum CVSSUserInteractionContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteractionContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static CVSSUserInteractionContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSUserInteractionContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteractionContaineranalysisV1alpha1 value: $value');
  }
}
