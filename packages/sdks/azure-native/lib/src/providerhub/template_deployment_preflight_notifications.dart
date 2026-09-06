import 'package:pulumi/pulumi.dart' as pulumi;

/// The preflight notifications.
enum TemplateDeploymentPreflightNotifications implements pulumi.PulumiEnum<String> {
  none("None"),
  unregisteredSubscriptions("UnregisteredSubscriptions");

  const TemplateDeploymentPreflightNotifications(this.wireValue);
  @override
  final String wireValue;

  static TemplateDeploymentPreflightNotifications fromValue(String value) {
    for (final item in TemplateDeploymentPreflightNotifications.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentPreflightNotifications value: $value');
  }
}
