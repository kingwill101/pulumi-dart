import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final names = config.requireObject<List<dynamic>>('names');
    final tags = config.requireObject<Map<String, dynamic>>('tags');

    _outputProperties = [
      pulumi.OutputProperty('greetings', pulumi.output([for (final (resource, name) in (names as Iterable).indexed) 'Hello, ' + (name).toString() + '!']).apply<Object?>((value) => value)),
      pulumi.OutputProperty('numbered', pulumi.output([for (final (i, name2) in (names as Iterable).indexed) (i).toString() + '-' + (name2).toString()]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('tagList', pulumi.output([for (final MapEntry(key: k, value: v) in (tags).entries) (k).toString() + '=' + (v).toString()]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('greetingMap', pulumi.output({for (final (resource2, name3) in (names as Iterable).indexed) name3: 'Hello, ' + (name3).toString() + '!'}).apply<Object?>((value) => value)),
      pulumi.OutputProperty('filteredList', pulumi.output([for (final (resource3, name4) in (names as Iterable).indexed) if ((name4 != 'b')) name4]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('filteredMap', pulumi.output({for (final (resource4, name5) in (names as Iterable).indexed) if ((name5 != 'b')) name5: 'Hello, ' + (name5).toString() + '!'}).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
