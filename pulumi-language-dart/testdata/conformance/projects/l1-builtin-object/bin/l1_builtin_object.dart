import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aMap = config.requireObject<Map<String, dynamic>>('aMap');
    final alternativeNames = config.getObject<dynamic>('alternativeNames') ?? {};

    _outputProperties = [
      pulumi.OutputProperty('entriesOutput', pulumi.output(pulumi.mapEntries(aMap)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupOutput', pulumi.output(pulumi.mapLookup(aMap, 'keyPresent', 'default')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupOutputDefault', pulumi.output(pulumi.mapLookup(aMap, 'keyMissing', 'default')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('names', pulumi.output([for (final entry in pulumi.mapEntries(alternativeNames)) pulumi.indexValue(entry, 'value')]).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
