import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired_state the agent should maintain for this package. The default is to ensure the package is installed.
enum PackageDesiredState implements pulumi.PulumiEnum<String> {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  updated("UPDATED"),
  removed("REMOVED");

  const PackageDesiredState(this.wireValue);
  @override
  final String wireValue;

  static PackageDesiredState fromValue(String value) {
    for (final item in PackageDesiredState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageDesiredState value: $value');
  }
}
