import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack();

  Future<void> initialize() async {
    final container = pulumi_nestedobject_index.Container('container', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(<String>['alpha', 'bravo']), ));
    final mapContainer = pulumi_nestedobject_index.MapContainer('mapContainer', args: pulumi_nestedobject_index.MapContainerArgs(tags: pulumi.Input.asInput(<String, String>{'k1': 'charlie', 'k2': 'delta'}), ));
    final listOutput = [for (final range in await pulumi.resolveRangeEntries(container.details)) pulumi_nestedobject_index.Target('listOutput-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(range.value.value), ))];
    final mapOutput = {for (final range in await pulumi.resolveRangeEntries(mapContainer.tags)) range.key.toString(): pulumi_nestedobject_index.Target('mapOutput-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput((range.key).toString() + '=>' + (range.value).toString()), ))};

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
