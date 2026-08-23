import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final failingHook = pulumi.ResourceHook('failingHook', (args) => pulumi.runResourceHookCommand(<String>['false']));
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(hooks: pulumi.ResourceHookBinding(afterCreate: [failingHook]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
