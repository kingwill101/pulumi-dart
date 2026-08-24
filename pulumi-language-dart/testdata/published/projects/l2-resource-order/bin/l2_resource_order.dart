import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = pulumi_simple_index.ResourceType('res1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final localVar = res1.value;
    final res2 = pulumi_simple_index.ResourceType('res2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(localVar).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));

    _outputProperties = [
      pulumi.OutputProperty('out', pulumi.output(res2.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
