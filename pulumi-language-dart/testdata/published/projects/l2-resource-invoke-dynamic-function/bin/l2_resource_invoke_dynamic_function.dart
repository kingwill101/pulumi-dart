import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_any_type_function/index.dart' as pulumi_any_type_function_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final localValue = 'hello';

    _outputProperties = [
      pulumi.OutputProperty('dynamic', pulumi.output(pulumi_any_type_function_index.dynListToDynOutput(pulumi_any_type_function_index.DynListToDynArgs(inputs: (<dynamic>['hello', localValue, {}]).input())).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
