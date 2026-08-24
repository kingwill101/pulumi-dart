import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class MyComponentArgs {
  final pulumi.Input<bool> input;

  const MyComponentArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class MyComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> output;

  MyComponent(String name, {required MyComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:MyComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final res = pulumi_simple_index.ResourceType(name + '-' + ('res'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(args.input).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ), options: pulumi.CustomResourceOptions(parent: this, ));
    output = pulumi.output(res.value);
    registerOutputs({'output': output, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final input = pulumi_simple_index.ResourceType('input', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final someComponent = MyComponent('someComponent', args: MyComponentArgs(input: pulumi.Input.asInput(pulumi.output(input.value).apply<bool>((value) => value as bool)), ));

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(someComponent.output).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
