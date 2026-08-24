import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_snake_names/cool_module.dart' as pulumi_snake_names_cool_module;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = pulumi_snake_names_cool_module.SomeResource('first', args: pulumi_snake_names_cool_module.SomeResourceArgs(theInput: pulumi.Input.asInput(true), nested: pulumi.Input.asInput(pulumi_snake_names_cool_module.NestedInput(nestedValue: ('nested').input())), ));
    final third = pulumi_snake_names_cool_module.AnotherResource('third', args: pulumi_snake_names_cool_module.AnotherResourceArgs(theInput: pulumi.Input.asInput(pulumi.output(pulumi_snake_names_cool_module.someDataOutput(pulumi_snake_names_cool_module.SomeDataArgs(theInput: (pulumi.output(first.theOutput.apply<dynamic>((value) => pulumi.indexValue(pulumi.indexValue(value, 'someKey'), 0)?.nestedOutput)).apply<String>((value) => (value).toString())).input(), nested: (<pulumi_snake_names_cool_module.Entry>[pulumi_snake_names_cool_module.Entry(value: ('fuzz').input())]).input())).apply<dynamic>((value) => pulumi.indexValue(pulumi.indexValue(value.nestedOutput, 0), 'key').value)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
