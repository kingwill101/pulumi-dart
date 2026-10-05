import 'package:pulumi/pulumi.dart' as pulumi;

/// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
enum AppProfilePriority implements pulumi.PulumiEnum<String> {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  priorityLow("PRIORITY_LOW"),
  priorityMedium("PRIORITY_MEDIUM"),
  priorityHigh("PRIORITY_HIGH");

  const AppProfilePriority(this.wireValue);
  @override
  final String wireValue;

  static AppProfilePriority fromValue(String value) {
    for (final item in AppProfilePriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppProfilePriority value: $value');
  }
}
