import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final a = config.requireNumber('a');
    final b = config.requireNumber('b');
    final c = (config.requireNumber('c')).toInt();
    final d = (config.requireNumber('d')).toInt();

    _outputProperties = [
      pulumi.OutputProperty('maxResult', pulumi.output([a, b].reduce((left, right) => left > right ? left : right)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('minResult', pulumi.output([a, b].reduce((left, right) => left < right ? left : right)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('intMaxResult', pulumi.output([c, d].reduce((left, right) => left > right ? left : right)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('intMinResult', pulumi.output([c, d].reduce((left, right) => left < right ? left : right)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
