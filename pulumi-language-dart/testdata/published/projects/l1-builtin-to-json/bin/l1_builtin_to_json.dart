import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aString = config.require('aString');
    final aNumber = config.requireNumber('aNumber');
    final aList = config.requireObject<List<dynamic>>('aList');
    final aSecret = pulumi.secret(config.require('aSecret')).apply<String>((value) => value as String);

    final nestedObject = {'anObject': {'name': aString, 'items': aList}, 'a_secret': aSecret};

    _outputProperties = [
      pulumi.OutputProperty('stringOutput', pulumi.output(pulumi.jsonStringify(aString)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('numberOutput', pulumi.output(pulumi.jsonStringify(aNumber)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('boolOutput', pulumi.output(pulumi.jsonStringify(true)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('arrayOutput', pulumi.output(pulumi.jsonStringify(['x', 'y', 'z'])).apply<Object?>((value) => value)),
      pulumi.OutputProperty('objectOutput', pulumi.output(pulumi.jsonStringify({'key': 'value', 'count': 1})).apply<Object?>((value) => value)),
      pulumi.OutputProperty('nestedOutput', pulumi.output(pulumi.jsonStringify(nestedObject)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
