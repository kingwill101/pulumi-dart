import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The desired state the agent should maintain for this package.
enum OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha implements pulumi.PulumiEnum<String> {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  removed("REMOVED");

  const OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha fromValue(String value) {
    for (final item in OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha value: $value');
  }
}
