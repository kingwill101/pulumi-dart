import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources.
enum DeploymentMode implements pulumi.PulumiEnum<String> {
  valueIncremental("Incremental"),
  valueComplete("Complete");

  const DeploymentMode(this.wireValue);
  @override
  final String wireValue;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}
