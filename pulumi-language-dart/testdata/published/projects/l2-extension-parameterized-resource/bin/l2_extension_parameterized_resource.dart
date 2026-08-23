import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_myext/index.dart' as pulumi_myext_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final greeting = pulumi_myext_index.Greeting('greeting');
    final greetingComp = pulumi_myext_index.GreetingComponent('greetingComp');

    _outputProperties = [
      pulumi.OutputProperty('parameterValue', pulumi.output(greeting.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('parameterValueFromComponent', pulumi.output(greetingComp.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('invokeGreeting', pulumi.output(pulumi_myext_index.greetOutput(pulumi_myext_index.GreetArgs(name: ('Pulumi').input())).apply((value) => value.greeting)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
