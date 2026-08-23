import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as pulumi_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = pulumi_component_index.ComponentCustomRefOutput('target', args: pulumi_component_index.ComponentCustomRefOutputArgs(value: ('checked').input(), ));
    final data = pulumi_component_index.identity2Output(pulumi_component_index.IdentityInvokeArgs(input: ('reachable').input()), options: pulumi.InvokeOutputOptions(dependsOn: [target]));

    _outputProperties = [
      pulumi.OutputProperty('echoed', pulumi.output(data.apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
