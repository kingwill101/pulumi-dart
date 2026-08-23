import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_keywords/index.dart' as keywords_index;
import 'package:pulumi_keywords/lambda.dart' as keywords_lambda;
import 'package:pulumi_keywords/module.dart' as keywords_module;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final firstResource = keywords_index.SomeResource('firstResource', args: keywords_index.SomeResourceArgs(builtins: ('builtins').input(), lambda: ('lambda').input(), property: ('property').input(), ));
    final secondResource = keywords_index.SomeResource('secondResource', args: keywords_index.SomeResourceArgs(builtins: (pulumi.output(firstResource.builtins).apply<String>((value) => (value).toString())).input(), lambda: (pulumi.output(firstResource.lambda).apply<String>((value) => (value).toString())).input(), property: (pulumi.output(firstResource.property).apply<String>((value) => (value).toString())).input(), ));
    final lambdaModuleResource = keywords_lambda.SomeResource('lambdaModuleResource', args: keywords_lambda.SomeResourceArgs(builtins: ('builtins').input(), lambda: ('lambda').input(), property: ('property').input(), ));
    final lambdaResource = keywords_module.Lambda('lambdaResource', args: keywords_module.LambdaArgs(builtins: ('builtins').input(), lambda: ('lambda').input(), property: ('property').input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
