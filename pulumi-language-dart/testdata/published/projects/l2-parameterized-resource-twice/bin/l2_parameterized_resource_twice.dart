import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_byepackage/index.dart' as pulumi_byepackage_index;
import 'package:pulumi_hipackage/index.dart' as pulumi_hipackage_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final example1 = pulumi_hipackage_index.HelloWorld('example1');
    final exampleComponent1 = pulumi_hipackage_index.HelloWorldComponent('exampleComponent1');
    final example2 = pulumi_byepackage_index.GoodbyeWorld('example2');
    final exampleComponent2 = pulumi_byepackage_index.GoodbyeWorldComponent('exampleComponent2');

    _outputProperties = [
      pulumi.OutputProperty('parameterValue1', pulumi.output(example1.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('parameterValueFromComponent1', pulumi.output(exampleComponent1.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('parameterValue2', pulumi.output(example2.parameterValue).apply<Object?>((value) => value)),
      pulumi.OutputProperty('parameterValueFromComponent2', pulumi.output(exampleComponent2.parameterValue).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
