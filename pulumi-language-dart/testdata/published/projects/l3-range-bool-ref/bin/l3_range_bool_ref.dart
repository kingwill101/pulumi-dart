import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final createBool = config.requireBoolean('createBool');
    final boolResource = (createBool) ? pulumi_nestedobject_index.Target('boolResource', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput('bool-resource'), )) : null;
    final boolTarget = pulumi_nestedobject_index.Target('boolTarget', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([boolResource?.name, '+']).apply<String>((values) => values.map((value) => value.toString()).join())).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
