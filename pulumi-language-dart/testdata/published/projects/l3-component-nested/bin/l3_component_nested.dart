import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class OuterComponentArgs {
  final pulumi.Input<bool> input;

  const OuterComponentArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class OuterComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> output;

  OuterComponent(String name, {required OuterComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:OuterComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final innerComponent = InnerComponent(name + '-innerComponent', args: InnerComponentArgs(input: pulumi.Input.asInput(pulumi.output(pulumi.output(args.input).apply<bool>((value) => !(value))).apply<bool>((value) => value as bool)), ), options: pulumi.ComponentResourceOptions(parent: this, ));
    output = pulumi.output(innerComponent.output);
    registerOutputs({'output': output, });
  }
}

class InnerComponentArgs {
  final pulumi.Input<bool> input;

  const InnerComponentArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class InnerComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> output;

  InnerComponent(String name, {required InnerComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:InnerComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final res = pulumi_simple_index.ResourceType(name + '-' + ('res'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(args.input).apply<bool>((value) => !(value))), ), options: pulumi.CustomResourceOptions(parent: this, ));
    output = pulumi.output(res.value);
    registerOutputs({'output': output, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final outerComponent = OuterComponent('outerComponent', args: OuterComponentArgs(input: pulumi.Input.asInput(pulumi.output(true).apply<bool>((value) => value as bool)), ));

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(outerComponent.output).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
