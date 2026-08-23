import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final itemMap = config.requireObject<Map<String, dynamic>>('itemMap');
    final mapResource = {for (final range in pulumi.rangeEntries(itemMap)) range.key.toString(): pulumi_nestedobject_index.Target('mapResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput((range.key).toString() + '=' + (range.value).toString()), ))};
    final mapTarget = pulumi_nestedobject_index.Target('mapTarget', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([pulumi.indexValue(mapResource, 'k1').name, '+']).apply<String>((values) => values.map((value) => value.toString()).join())).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
