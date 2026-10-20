import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3UserInteractionContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSv3UserInteractionContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3UserInteractionContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3UserInteractionContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3UserInteractionContaineranalysisV1beta1 value: $value');
  }
}
