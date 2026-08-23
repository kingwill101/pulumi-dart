import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withDefaultURL = simple_index.ResourceType('withDefaultURL', args: simple_index.ResourceArgs(value: (true).input(), ));
    final withExplicitDefaultURL = simple_index.ResourceType('withExplicitDefaultURL', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://github.com/pulumi/pulumi-simple/releases/v\${VERSION}', ));
    final withCustomURL1 = simple_index.ResourceType('withCustomURL1', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://custom.pulumi.test/provider1', ));
    final withCustomURL2 = simple_index.ResourceType('withCustomURL2', args: simple_index.ResourceArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(pluginDownloadURL: 'https://custom.pulumi.test/provider2', ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
