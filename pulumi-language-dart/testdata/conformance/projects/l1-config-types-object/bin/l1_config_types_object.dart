import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aMap = config.requireObject<Map<String, dynamic>>('aMap');
    final anObject = config.requireObject<Map<String, dynamic>>('anObject');
    final anyObject = config.requireObject<dynamic>('anyObject');
    final optionalUntypedObject = config.getObject<dynamic>('optionalUntypedObject') ?? {'key': 'value'};
    final optionalList = config.getObject<dynamic>('optionalList') ?? null;
    final optionalMap = config.getObject<dynamic>('optionalMap') ?? null;
    final optionalObject = config.getObject<dynamic>('optionalObject') ?? null;

    _outputProperties = [
      pulumi.OutputProperty('theMap', pulumi.output({'a': (pulumi.indexValue(aMap, 'a') + 1), 'b': (pulumi.indexValue(aMap, 'b') + 1)}).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theObject', pulumi.output(pulumi.indexValue(pulumi.indexValue(anObject, 'prop'), 0)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theThing', pulumi.output((pulumi.indexValue(anyObject, 'a') + pulumi.indexValue(anyObject, 'b'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('defaultUntypedObject', pulumi.output(optionalUntypedObject).apply<Object?>((value) => value)),
      pulumi.OutputProperty('optionalList', pulumi.output(((optionalList == null) ? 'null' : pulumi.jsonStringify(optionalList))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('optionalMap', pulumi.output(((optionalMap == null) ? 'null' : pulumi.jsonStringify(optionalMap))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('optionalObject', pulumi.output(((optionalObject == null) ? 'null' : pulumi.jsonStringify(optionalObject))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
