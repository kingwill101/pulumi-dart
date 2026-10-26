import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Desired state of the file.
enum OSPolicyResourceFileResourceStateOsconfigV1alpha implements pulumi.PulumiEnum<String> {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  present("PRESENT"),
  absent("ABSENT"),
  contentsMatch("CONTENTS_MATCH");

  const OSPolicyResourceFileResourceStateOsconfigV1alpha(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourceFileResourceStateOsconfigV1alpha fromValue(String value) {
    for (final item in OSPolicyResourceFileResourceStateOsconfigV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourceFileResourceStateOsconfigV1alpha value: $value');
  }
}
