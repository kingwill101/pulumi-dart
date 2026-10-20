import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The desired state the agent should maintain for this package.
enum OSPolicyResourcePackageResourceDesiredState implements pulumi.PulumiEnum<String> {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  removed("REMOVED");

  const OSPolicyResourcePackageResourceDesiredState(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourcePackageResourceDesiredState fromValue(String value) {
    for (final item in OSPolicyResourcePackageResourceDesiredState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourcePackageResourceDesiredState value: $value');
  }
}
