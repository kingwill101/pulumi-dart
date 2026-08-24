import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as pulumi_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final component1 = pulumi_component_index.ComponentCallable('component1', args: pulumi_component_index.ComponentCallableArgs(value: pulumi.Input.asInput('bar'), ));

    _outputProperties = [
      pulumi.OutputProperty('from_identity', pulumi.output(pulumi.output(component1.identity()).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('from_prefixed', pulumi.output(pulumi.output(component1.prefixed(args: pulumi_component_index.ComponentCallablePrefixedArgs(prefix: ('foo-').input()))).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
