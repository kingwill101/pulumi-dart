import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_extbase/index.dart' as pulumi_extbase_index;
import 'package:pulumi_myext/index.dart' as pulumi_myext_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final greeting = pulumi_myext_index.Greeting('greeting');
    final base = pulumi_extbase_index.Base('base');

    _outputProperties = [
      pulumi.OutputProperty('parameterValue', pulumi.output(greeting.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('baseValue', pulumi.output(base.baseValue).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
