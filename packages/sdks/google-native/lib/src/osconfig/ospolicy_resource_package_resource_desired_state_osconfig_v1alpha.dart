/// Required. The desired state the agent should maintain for this package.
enum OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  removed("REMOVED");

  const OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha(this.wireValue);
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
