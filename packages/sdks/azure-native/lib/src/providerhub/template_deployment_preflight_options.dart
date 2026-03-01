/// The preflight options.
enum TemplateDeploymentPreflightOptions {
  none("None"),
  validationRequests("ValidationRequests"),
  deploymentRequests("DeploymentRequests"),
  testOnly("TestOnly"),
  registeredOnly("RegisteredOnly");

  const TemplateDeploymentPreflightOptions(this.value);
  final String value;

  static TemplateDeploymentPreflightOptions fromValue(String value) {
    for (final item in TemplateDeploymentPreflightOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateDeploymentPreflightOptions value: $value');
  }
}

