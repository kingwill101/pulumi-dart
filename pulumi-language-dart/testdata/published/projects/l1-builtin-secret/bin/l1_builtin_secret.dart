import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aSecret = pulumi.secret(config.require('aSecret')).apply<String>((value) => value as String);
    final notSecret = config.require('notSecret');

    _outputProperties = [
      pulumi.OutputProperty('roundtripSecret', pulumi.output(aSecret).apply<Object?>((value) => value)),
      pulumi.OutputProperty('roundtripNotSecret', pulumi.output(notSecret).apply<Object?>((value) => value)),
      pulumi.OutputProperty('double', pulumi.output(pulumi.secret(aSecret)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('open', pulumi.output(pulumi.unsecret(aSecret)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('close', pulumi.output(pulumi.secret(notSecret)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
