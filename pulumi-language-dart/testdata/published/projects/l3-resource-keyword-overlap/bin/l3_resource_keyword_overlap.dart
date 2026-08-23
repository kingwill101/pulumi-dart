import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class KeywordComponentArgs {
  final pulumi.Input<bool> input;

  const KeywordComponentArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class KeywordComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> result;

  KeywordComponent(String name, {required KeywordComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:KeywordComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final this_ = pulumi_simple_index.ResourceType(name + '-' + ('this'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(args.input).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ), options: pulumi.CustomResourceOptions(parent: this, ));
    final parent = pulumi_simple_index.ResourceType(name + '-' + ('parent'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(this_.value).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ), options: pulumi.CustomResourceOptions(parent: this, ));
    result = pulumi.output(parent.value);
    registerOutputs({'result': result, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final comp = KeywordComponent('comp', args: KeywordComponentArgs(input: pulumi.Input.asInput(pulumi.output(true).apply<bool>((value) => value as bool)), ));

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(comp.result).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
