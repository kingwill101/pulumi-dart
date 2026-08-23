import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class FirstArgs {
  final pulumi.Input<bool> input;

  const FirstArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class First extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> untainted;
  late final pulumi.Output<dynamic> tainted;

  First(String name, {required FirstArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:First', name, const {}, options) {
    final firstUntainted = pulumi_simple_index.ResourceType(name + '-' + ('first-untainted'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: this, ));
    final firstTainted = pulumi_simple_index.ResourceType(name + '-' + ('first-tainted'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(args.input).apply<bool>((value) => !(value))), ), options: pulumi.CustomResourceOptions(parent: this, ));
    untainted = pulumi.output(firstUntainted.value);
    tainted = pulumi.output(firstTainted.value);
    registerOutputs({'untainted': untainted, 'tainted': tainted, });
  }
}

class SecondArgs {
  final pulumi.Input<bool> input;

  const SecondArgs({required this.input, });

  Map<String, dynamic> toMap() => {'input': input, };
}

class Second extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> untainted;
  late final pulumi.Output<dynamic> tainted;

  Second(String name, {required SecondArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:Second', name, const {}, options) {
    final secondUntainted = pulumi_simple_index.ResourceType(name + '-' + ('second-untainted'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: this, ));
    final secondTainted = pulumi_simple_index.ResourceType(name + '-' + ('second-tainted'), args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(args.input).apply<bool>((value) => !(value))), ), options: pulumi.CustomResourceOptions(parent: this, ));
    untainted = pulumi.output(secondUntainted.value);
    tainted = pulumi.output(secondTainted.value);
    registerOutputs({'untainted': untainted, 'tainted': tainted, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final (firstSecondUntainted, firstSecondUntaintedResolve) = pulumi.deferredOutput<bool>();
    final first = First('first', args: FirstArgs(input: pulumi.Input.asInput(pulumi.output(firstSecondUntainted).apply<bool>((value) => value as bool)), ));
    final second = Second('second', args: SecondArgs(input: pulumi.Input.asInput(pulumi.output(first.untainted).apply<bool>((value) => value as bool)), ));
    firstSecondUntaintedResolve(pulumi.Input.asInput<bool>(second.untainted).toOutput());
    final (anotherLoopingOverMany, anotherLoopingOverManyResolve) = pulumi.deferredOutput<List<String>>();
    final another = First('another', args: FirstArgs(input: pulumi.Input.asInput(pulumi.output(pulumi.output([pulumi.output(['', anotherLoopingOverMany]).apply<String>((values) => (values[1] as Iterable).join(values[0].toString())), 'xyz']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value as bool)), ));
    final many = [for (final range in pulumi.rangeEntries(2)) Second('many' + '-' + range.key.toString(), args: SecondArgs(input: pulumi.Input.asInput(pulumi.output(another.untainted).apply<bool>((value) => value as bool)), ))];
    anotherLoopingOverManyResolve(pulumi.Input.asInput<List<String>>(pulumi.output([for (final (resource, v) in (many as Iterable).indexed) pulumi.output(v.untainted).apply<dynamic>((value) => value ? 'a' : 'b')]).apply<List<dynamic>>((value) => (value as List).cast<String>())).toOutput());

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
