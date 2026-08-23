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
      pulumi.OutputProperty('class', pulumi.Output.create<Object?>(class_)),
      pulumi.OutputProperty('export', pulumi.Output.create<Object?>(export)),
      pulumi.OutputProperty('import', pulumi.Output.create<Object?>(import)),
      pulumi.OutputProperty('mod', pulumi.Output.create<Object?>(mod)),
      pulumi.OutputProperty('object', pulumi.Output.create<Object?>(object_)),
      pulumi.OutputProperty('self', pulumi.Output.create<Object?>(self)),
      pulumi.OutputProperty('this', pulumi.Output.create<Object?>(this_)),
      pulumi.OutputProperty('if', pulumi.Output.create<Object?>(if_)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
