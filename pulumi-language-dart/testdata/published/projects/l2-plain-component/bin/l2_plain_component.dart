import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_plaincomponent/index.dart' as pulumi_plaincomponent_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final myComponent = pulumi_plaincomponent_index.Component('myComponent', args: pulumi_plaincomponent_index.ComponentArgs(name: pulumi.Input.asInput('my-resource'), settings: pulumi.Input.asInput(pulumi_plaincomponent_index.Settings(enabled: (true).input(), tags: (<String, String>{'env': 'test'}).input())), ));

    _outputProperties = [
      pulumi.OutputProperty('label', pulumi.output(myComponent.label).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
