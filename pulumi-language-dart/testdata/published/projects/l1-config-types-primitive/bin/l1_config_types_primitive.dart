import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aNumber = config.requireNumber('aNumber');
    final optionalNumber = config.getNumber('optionalNumber') ?? 41.5;
    final anInt = (config.requireNumber('anInt')).toInt();
    final optionalInt = (config.getNumber('optionalInt') ?? 1).toInt();
    final aString = config.require('aString');
    final optionalString = config.get('optionalString') ?? 'defaultStringValue';
    final aBool = config.requireBoolean('aBool');
    final optionalBool = config.getBoolean('optionalBool') ?? false;

    _outputProperties = [
      pulumi.OutputProperty('theNumber', pulumi.output((aNumber + 1.25)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('defaultNumber', pulumi.output((optionalNumber + 1.2)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theInteger', pulumi.output((anInt + 4)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('defaultInteger', pulumi.output((optionalInt + 2)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theString', pulumi.output((aString).toString() + ' World').apply<Object?>((value) => value)),
      pulumi.OutputProperty('defaultString', pulumi.output(optionalString).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theBool', pulumi.output((!(aBool) && true)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('defaultBool', pulumi.output(optionalBool).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
