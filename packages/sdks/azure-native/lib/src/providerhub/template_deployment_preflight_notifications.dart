/// The preflight notifications.
enum TemplateDeploymentPreflightNotifications {
  none("None"),
  unregisteredSubscriptions("UnregisteredSubscriptions");

  const TemplateDeploymentPreflightNotifications(this.wireValue);
  final String wireValue;

  static TemplateDeploymentPreflightNotifications fromValue(String value) {
    for (final item in TemplateDeploymentPreflightNotifications.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TemplateDeploymentPreflightNotifications value: $value',
    );
  }
}
