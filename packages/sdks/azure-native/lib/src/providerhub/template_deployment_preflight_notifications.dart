/// The preflight notifications.
enum TemplateDeploymentPreflightNotifications {
  none("None"),
  unregisteredSubscriptions("UnregisteredSubscriptions");

  const TemplateDeploymentPreflightNotifications(this.value);
  final String value;

  static TemplateDeploymentPreflightNotifications fromValue(String value) {
    for (final item in TemplateDeploymentPreflightNotifications.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentPreflightNotifications value: $value');
  }
}

