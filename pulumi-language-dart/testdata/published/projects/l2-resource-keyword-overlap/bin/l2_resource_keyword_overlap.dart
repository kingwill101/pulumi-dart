import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final class_ = simple_index.ResourceType('class', args: simple_index.ResourceArgs(value: (true).input(), ));
    final export = simple_index.ResourceType('export', args: simple_index.ResourceArgs(value: (true).input(), ));
    final mod = simple_index.ResourceType('mod', args: simple_index.ResourceArgs(value: (true).input(), ));
    final import = simple_index.ResourceType('import', args: simple_index.ResourceArgs(value: (true).input(), ));
    final object_ = simple_index.ResourceType('object', args: simple_index.ResourceArgs(value: (true).input(), ));
    final self = simple_index.ResourceType('self', args: simple_index.ResourceArgs(value: (true).input(), ));
    final this_ = simple_index.ResourceType('this', args: simple_index.ResourceArgs(value: (true).input(), ));
    final if_ = simple_index.ResourceType('if', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('class', pulumi.output(class_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('export', pulumi.output(export).apply<Object?>((value) => value)),
      pulumi.OutputProperty('mod', pulumi.output(mod).apply<Object?>((value) => value)),
      pulumi.OutputProperty('object', pulumi.output(object_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('self', pulumi.output(self).apply<Object?>((value) => value)),
      pulumi.OutputProperty('this', pulumi.output(this_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('if', pulumi.output(if_).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
