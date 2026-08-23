import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final numItems = (config.requireNumber('numItems')).toInt();
    final itemList = config.requireObject<List<dynamic>>('itemList');
    final numResource = [for (final range in pulumi.rangeEntries(numItems)) pulumi_nestedobject_index.Target('numResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput('num-' + (range.value).toString()), ))];
    final numTarget = pulumi_nestedobject_index.Target('numTarget', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([pulumi.indexValue(numResource, 0).name, '+']).apply<String>((values) => values.map((value) => value.toString()).join())).apply<String>((value) => (value).toString())), ));
    final listResource = [for (final range in pulumi.rangeEntries(itemList)) pulumi_nestedobject_index.Target('listResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput((range.key).toString() + ':' + (range.value).toString()), ))];
    final listTarget = pulumi_nestedobject_index.Target('listTarget', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([pulumi.indexValue(listResource, 1).name, '+']).apply<String>((values) => values.map((value) => value.toString()).join())).apply<String>((value) => (value).toString())), ));
    final listDynTarget = [for (final range in pulumi.rangeEntries(itemList)) pulumi_nestedobject_index.Target('listDynTarget-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput(pulumi.output(pulumi.output([pulumi.output([listResource, range.key]).apply<dynamic>((values) => pulumi.indexValue(values[0], values[1])).apply((value) => value.name), '!']).apply<String>((values) => values.map((value) => value.toString()).join())).apply<String>((value) => (value).toString())), ))];

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
