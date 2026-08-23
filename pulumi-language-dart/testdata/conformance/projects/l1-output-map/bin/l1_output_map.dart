import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('empty', pulumi.Output.create<Object?>({})),
      pulumi.OutputProperty('strings', pulumi.Output.create<Object?>({'greeting': 'Hello, world!', 'farewell': 'Goodbye, world!'})),
      pulumi.OutputProperty('adversarialStrings', pulumi.Output.create<Object?>({'__type': 'dunder type', '__internal': 'dunder internal', '__provider': 'dunder provider', '__version': 'dunder version', '': 'empty key', 'empty value': '', 'dunder value': '__dunder', 'Some \${common} "characters" \'that\' need escaping: \\ (backslash), \t (tab), \u001b (escape), \u0007 (bell), \u0000 (null), 󠀡 (tag space)': 'Some \${common} "characters" \'that\' need escaping: \\ (backslash), \t (tab), \u001b (escape), \u0007 (bell), \u0000 (null), 󠀡 (tag space)'})),
      pulumi.OutputProperty('numbers', pulumi.Output.create<Object?>({'1': 1, '2': 2})),
      pulumi.OutputProperty('keys', pulumi.Output.create<Object?>({'my.key': 1, 'my-key': 2, 'my_key': 3, 'MY_KEY': 4, 'mykey': 5, 'MYKEY': 6})),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
