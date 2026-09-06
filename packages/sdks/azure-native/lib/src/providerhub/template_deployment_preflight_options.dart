import 'package:pulumi/pulumi.dart' as pulumi;

/// The preflight options.
enum TemplateDeploymentPreflightOptions implements pulumi.PulumiEnum<String> {
  none("None"),
  validationRequests("ValidationRequests"),
  deploymentRequests("DeploymentRequests"),
  testOnly("TestOnly"),
  registeredOnly("RegisteredOnly");

  const TemplateDeploymentPreflightOptions(this.wireValue);
  @override
  final String wireValue;

  static TemplateDeploymentPreflightOptions fromValue(String value) {
    for (final item in TemplateDeploymentPreflightOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentPreflightOptions value: $value');
  }
}
