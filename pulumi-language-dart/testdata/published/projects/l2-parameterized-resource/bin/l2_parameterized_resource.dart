import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_subpackage/index.dart' as pulumi_subpackage_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final example = pulumi_subpackage_index.HelloWorld('example');
    final exampleComponent = pulumi_subpackage_index.HelloWorldComponent('exampleComponent');

    _outputProperties = [
      pulumi.OutputProperty('parameterValue', pulumi.output(example.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('parameterValueFromComponent', pulumi.output(exampleComponent.parameterValue).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
