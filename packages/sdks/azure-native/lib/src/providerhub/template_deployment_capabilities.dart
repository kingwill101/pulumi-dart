/// The capabilities.
enum TemplateDeploymentCapabilities {
  default_("Default"),
  preflight("Preflight");

  const TemplateDeploymentCapabilities(this.value);
  final String value;

  static TemplateDeploymentCapabilities fromValue(String value) {
    for (final item in TemplateDeploymentCapabilities.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentCapabilities value: $value');
  }
}

