import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the IoT Security solution.
enum SecuritySolutionStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const SecuritySolutionStatus(this.wireValue);
  @override
  final String wireValue;

  static SecuritySolutionStatus fromValue(String value) {
    for (final item in SecuritySolutionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySolutionStatus value: $value');
  }
}
