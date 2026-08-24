import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final numItems = (config.requireNumber('numItems')).toInt();
    final itemList = config.requireObject<List<dynamic>>('itemList');
    final itemMap = config.requireObject<Map<String, dynamic>>('itemMap');
    final createBool = config.requireBoolean('createBool');
    final numResource = [for (final range in pulumi.rangeEntries(numItems)) pulumi_nestedobject_index.Target('numResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput('num-' + (range.value).toString()), ))];
    final listResource = [for (final range in pulumi.rangeEntries(itemList)) pulumi_nestedobject_index.Target('listResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput((range.key).toString() + ':' + (range.value).toString()), ))];
    final mapResource = {for (final range in pulumi.rangeEntries(itemMap)) range.key.toString(): pulumi_nestedobject_index.Target('mapResource-' + range.key.toString(), args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput((range.key).toString() + '=' + (range.value).toString()), ))};
    final boolResource = (createBool) ? pulumi_nestedobject_index.Target('boolResource', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput('bool-resource'), )) : null;

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
