import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedcollections/index.dart' as pulumi_nestedcollections_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final foo = pulumi_nestedcollections_index.Foo('foo');

    _outputProperties = [
      pulumi.OutputProperty('secondProp', pulumi.output(foo.conditionSets.apply<dynamic>((value) => pulumi.indexValue(pulumi.indexValue(pulumi.indexValue(value, 0), 0), 1)?.prop)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('leaf', pulumi.output(foo.privateEndpoint.apply<dynamic>((value) => pulumi.indexValue(pulumi.indexValue(pulumi.indexValue(value, 'outer'), 'inner'), 'leaf'))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
