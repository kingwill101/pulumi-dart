import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final names = ['alpha', 'beta', 'gamma'];
    final tags = {'Environment': 'production', 'Team': 'infra'};

    _outputProperties = [
      pulumi.OutputProperty('prefixed', pulumi.output([for (final n in (names as Iterable)) 'prefix-' + (n).toString()]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('filtered', pulumi.output([for (final n2 in (names as Iterable)) if ((n2 != 'beta')) n2]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('indexed', pulumi.output([for (final (i, n3) in (names as Iterable).indexed) (i).toString() + ':' + (n3).toString()]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('tagList', pulumi.output([for (final MapEntry(key: k, value: v) in (tags).entries) (k).toString() + '=' + (v).toString()]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('prefixedMap', pulumi.output({for (final n4 in (names as Iterable)) n4: 'prefix-' + (n4).toString()}).apply<Object?>((value) => value)),
      pulumi.OutputProperty('filteredTags', pulumi.output({for (final MapEntry(key: k2, value: v2) in (tags).entries) if ((k2 != 'Team')) k2: v2}).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
