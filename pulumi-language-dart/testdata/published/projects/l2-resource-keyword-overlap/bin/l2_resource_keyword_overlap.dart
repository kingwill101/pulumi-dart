import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final class_ = pulumi_simple_index.ResourceType('class', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final export = pulumi_simple_index.ResourceType('export', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final mod = pulumi_simple_index.ResourceType('mod', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final import = pulumi_simple_index.ResourceType('import', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final object_ = pulumi_simple_index.ResourceType('object', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final self = pulumi_simple_index.ResourceType('self', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final this_ = pulumi_simple_index.ResourceType('this', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final if_ = pulumi_simple_index.ResourceType('if', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

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
