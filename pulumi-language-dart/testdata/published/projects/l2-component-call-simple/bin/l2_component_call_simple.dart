import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final component1 = component_index.ComponentCallable('component1', args: component_index.ComponentCallableArgs(value: ('bar').input(), ));

    _outputProperties = [
      pulumi.OutputProperty('from_identity', pulumi.output(pulumi.output(component1.identity()).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('from_prefixed', pulumi.output(pulumi.output(component1.prefixed(args: component_index.ComponentCallablePrefixedArgs(prefix: ('foo-').input()))).apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
