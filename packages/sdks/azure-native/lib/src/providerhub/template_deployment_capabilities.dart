/// The capabilities.
enum TemplateDeploymentCapabilities {
  default_("Default"),
  preflight("Preflight");

  const TemplateDeploymentCapabilities(this.wireValue);
  final String wireValue;

  static TemplateDeploymentCapabilities fromValue(String value) {
    for (final item in TemplateDeploymentCapabilities.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentCapabilities value: $value');
  }
}
