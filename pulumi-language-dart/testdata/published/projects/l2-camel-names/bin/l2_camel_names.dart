import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_camelnames/cool_module.dart' as pulumi_camelnames_cool_module;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final firstResource = pulumi_camelnames_cool_module.SomeResource('firstResource', args: pulumi_camelnames_cool_module.SomeResourceArgs(theInput: (true).input(), ));
    final secondResource = pulumi_camelnames_cool_module.SomeResource('secondResource', args: pulumi_camelnames_cool_module.SomeResourceArgs(theInput: (pulumi.output(firstResource.theOutput).apply<bool>((value) => value as bool)).input(), ));
    final thirdResource = pulumi_camelnames_cool_module.SomeResource('thirdResource', args: pulumi_camelnames_cool_module.SomeResourceArgs(theInput: (true).input(), resourceName: ('my-cluster').input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
