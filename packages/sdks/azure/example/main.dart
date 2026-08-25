import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_azure/core.dart' as pulumi_azure_core;

class AzureStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  AzureStack() {
    final resourceGroup = pulumi_azure_core.ResourceGroup('resource-group');

    _outputProperties = [
      pulumi.OutputProperty(
        'resourceGroupName',
        pulumi.output(resourceGroup.name).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AzureStack());
}
