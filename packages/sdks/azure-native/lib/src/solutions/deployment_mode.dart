import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application deployment mode.
enum DeploymentMode implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueIncremental("Incremental"),
  valueComplete("Complete");

  const DeploymentMode(this.wireValue);
  @override
  final String wireValue;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}
