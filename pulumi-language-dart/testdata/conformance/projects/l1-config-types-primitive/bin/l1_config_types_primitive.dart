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
      pulumi.OutputProperty('theNumber', pulumi.Output.create<Object?>((aNumber + 1.25))),
      pulumi.OutputProperty('defaultNumber', pulumi.Output.create<Object?>((optionalNumber + 1.2))),
      pulumi.OutputProperty('theInteger', pulumi.Output.create<Object?>((anInt + 4))),
      pulumi.OutputProperty('defaultInteger', pulumi.Output.create<Object?>((optionalInt + 2))),
      pulumi.OutputProperty('theString', pulumi.Output.create<Object?>((aString).toString() + ' World')),
      pulumi.OutputProperty('defaultString', pulumi.Output.create<Object?>(optionalString)),
      pulumi.OutputProperty('theBool', pulumi.Output.create<Object?>((!(aBool) && true))),
      pulumi.OutputProperty('defaultBool', pulumi.Output.create<Object?>(optionalBool)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
