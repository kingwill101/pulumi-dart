import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aString = config.require('aString');

    _outputProperties = [
      pulumi.OutputProperty('lengthResult', pulumi.output(pulumi.stringLength(aString)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('splitResult', pulumi.output((aString).split('-')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('joinResult', pulumi.output(((aString).split('-')).join('|')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('interpolateResult', pulumi.output('prefix-' + (aString).toString()).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
