import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack();

  Future<void> initialize() async {
    final source = pulumi_nestedobject_index.Container('source', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(<String>['alpha', 'bravo', 'charlie']), ));
    final values = pulumi_nestedobject_index.getValuesOutput(pulumi_nestedobject_index.GetValuesArgs(names: (pulumi.output(source.inputs).apply<List<String>>((value) => (value as List).cast<String>())).input()));
    final routes = [for (final range in await pulumi.resolveRangeEntries(pulumi.output(values.apply<dynamic>((value) => value.results)).apply<int>((value) => (value as dynamic).length as int))) pulumi_nestedobject_index.Target('routes-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([values.apply<dynamic>((value) => value.results), range.value]).apply<dynamic>((values) => pulumi.indexValue(values[0], values[1]))).apply<String>((value) => (value).toString())), ))];

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() async {
    final stack = GeneratedStack();
    await stack.initialize();
  });
}
