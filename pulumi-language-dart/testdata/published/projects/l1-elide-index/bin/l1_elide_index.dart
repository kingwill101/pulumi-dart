import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final myStash = pulumi.Stash('myStash', pulumi.StashArgs(input: ('test').input()));

    _outputProperties = [
      pulumi.OutputProperty('stashInput', pulumi.output(myStash.input).apply<Object?>((value) => value)),
      pulumi.OutputProperty('stashOutput', pulumi.output(myStash.output).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
