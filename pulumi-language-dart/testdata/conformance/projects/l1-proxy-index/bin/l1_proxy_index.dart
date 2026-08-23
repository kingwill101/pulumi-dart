import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final anObject = config.requireObject<Map<String, dynamic>>('anObject');
    final anyObject = config.requireObject<dynamic>('anyObject');

    final l = pulumi.secret([1]);
    final m = pulumi.secret({'key': true});
    final c = pulumi.secret(anObject);
    final o = pulumi.secret({'property': 'value'});
    final a = pulumi.secret(anyObject);

    _outputProperties = [
      pulumi.OutputProperty('l', pulumi.output(pulumi.output(l).apply<dynamic>((value) => pulumi.indexValue(value, 0))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('m', pulumi.output(pulumi.output(m).apply<dynamic>((value) => pulumi.indexValue(value, 'key'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('c', pulumi.output(pulumi.output(c).apply<dynamic>((value) => pulumi.indexValue(value, 'property'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('o', pulumi.output(pulumi.output(o).apply<dynamic>((value) => pulumi.indexValue(value, 'property'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('a', pulumi.output(pulumi.output(a).apply<dynamic>((value) => pulumi.indexValue(value, 'property'))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
