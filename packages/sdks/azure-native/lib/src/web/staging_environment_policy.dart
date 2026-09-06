import 'package:pulumi/pulumi.dart' as pulumi;

/// State indicating whether staging environments are allowed or not allowed for a static web app.
enum StagingEnvironmentPolicy implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StagingEnvironmentPolicy(this.wireValue);
  @override
  final String wireValue;

  static StagingEnvironmentPolicy fromValue(String value) {
    for (final item in StagingEnvironmentPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StagingEnvironmentPolicy value: $value');
  }
}
