import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;
import 'package:pulumi_simple_invoke/providers.dart' as pulumi_simple_invoke_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final explicitProvider = pulumi_simple_invoke_providers.ProviderProvider('explicitProvider');
    final data = pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: ('hello').input()), options: pulumi.InvokeOutputOptions(provider: explicitProvider, parent: explicitProvider, version: '10.0.0', pluginDownloadURL: 'https://example.com/github/example'));

    _outputProperties = [
      pulumi.OutputProperty('hello', pulumi.output(data.apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
