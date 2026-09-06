import 'package:pulumi/pulumi.dart' as pulumi;

enum LegacyOperation implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  create("Create"),
  delete("Delete"),
  waiting("Waiting"),
  azureAsyncOperationWaiting("AzureAsyncOperationWaiting"),
  resourceCacheWaiting("ResourceCacheWaiting"),
  action("Action"),
  read("Read"),
  evaluateDeploymentOutput("EvaluateDeploymentOutput"),
  deploymentCleanup("DeploymentCleanup");

  const LegacyOperation(this.wireValue);
  @override
  final String wireValue;

  static LegacyOperation fromValue(String value) {
    for (final item in LegacyOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LegacyOperation value: $value');
  }
}
