import 'package:pulumi/pulumi.dart' as pulumi;

/// The capabilities.
enum TemplateDeploymentCapabilities implements pulumi.PulumiEnum<String> {
  default_("Default"),
  preflight("Preflight");

  const TemplateDeploymentCapabilities(this.wireValue);
  @override
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
