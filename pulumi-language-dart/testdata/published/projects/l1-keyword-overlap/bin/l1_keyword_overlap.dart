import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final class_ = 'class_output_string';
    final export = 'export_output_string';
    final import = 'import_output_string';
    final mod = 'mod_output_string';
    final object_ = {'object': 'object_output_string'};
    final self = 'self_output_string';
    final this_ = 'this_output_string';
    final if_ = 'if_output_string';

    _outputProperties = [
      pulumi.OutputProperty('class', pulumi.output(class_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('export', pulumi.output(export).apply<Object?>((value) => value)),
      pulumi.OutputProperty('import', pulumi.output(import).apply<Object?>((value) => value)),
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
