import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_keywords/index.dart' as pulumi_keywords_index;
import 'package:pulumi_keywords/lambda.dart' as pulumi_keywords_lambda;
import 'package:pulumi_keywords/module.dart' as pulumi_keywords_module;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final firstResource = pulumi_keywords_index.SomeResource('firstResource', args: pulumi_keywords_index.SomeResourceArgs(builtins: pulumi.Input.asInput('builtins'), lambda: pulumi.Input.asInput('lambda'), property: pulumi.Input.asInput('property'), ));
    final secondResource = pulumi_keywords_index.SomeResource('secondResource', args: pulumi_keywords_index.SomeResourceArgs(builtins: pulumi.Input.asInput(pulumi.output(firstResource.builtins).apply<String>((value) => (value).toString())), lambda: pulumi.Input.asInput(pulumi.output(firstResource.lambda).apply<String>((value) => (value).toString())), property: pulumi.Input.asInput(pulumi.output(firstResource.property).apply<String>((value) => (value).toString())), ));
    final lambdaModuleResource = pulumi_keywords_lambda.SomeResource('lambdaModuleResource', args: pulumi_keywords_lambda.SomeResourceArgs(builtins: pulumi.Input.asInput('builtins'), lambda: pulumi.Input.asInput('lambda'), property: pulumi.Input.asInput('property'), ));
    final lambdaResource = pulumi_keywords_module.Lambda('lambdaResource', args: pulumi_keywords_module.LambdaArgs(builtins: pulumi.Input.asInput('builtins'), lambda: pulumi.Input.asInput('lambda'), property: pulumi.Input.asInput('property'), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
