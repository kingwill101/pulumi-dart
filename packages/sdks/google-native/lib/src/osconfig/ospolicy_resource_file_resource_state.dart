import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Desired state of the file.
enum OSPolicyResourceFileResourceState implements pulumi.PulumiEnum<String> {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  present("PRESENT"),
  absent("ABSENT"),
  contentsMatch("CONTENTS_MATCH");

  const OSPolicyResourceFileResourceState(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourceFileResourceState fromValue(String value) {
    for (final item in OSPolicyResourceFileResourceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourceFileResourceState value: $value');
  }
}
