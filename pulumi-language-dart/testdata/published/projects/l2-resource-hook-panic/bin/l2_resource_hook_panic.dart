import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final panicHook = pulumi.ResourceHook('panicHook', (args) => pulumi.runResourceHookCommand(<String>[throw UnimplementedError(('hook panic').toString())]));
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(hooks: pulumi.ResourceHookBinding(afterCreate: [panicHook]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
