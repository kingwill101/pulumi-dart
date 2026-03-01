/// State indicating whether staging environments are allowed or not allowed for a static web app.
enum StagingEnvironmentPolicy {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StagingEnvironmentPolicy(this.value);
  final String value;

  static StagingEnvironmentPolicy fromValue(String value) {
    for (final item in StagingEnvironmentPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StagingEnvironmentPolicy value: $value');
  }
}

