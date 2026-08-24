import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withDefaultURL = pulumi_simple_index.ResourceType('withDefaultURL', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final withExplicitDefaultURL = pulumi_simple_index.ResourceType('withExplicitDefaultURL', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://github.com/pulumi/pulumi-simple/releases/v\${VERSION}', ));
    final withCustomURL1 = pulumi_simple_index.ResourceType('withCustomURL1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://custom.pulumi.test/provider1', ));
    final withCustomURL2 = pulumi_simple_index.ResourceType('withCustomURL2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(false), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://custom.pulumi.test/provider2', ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
