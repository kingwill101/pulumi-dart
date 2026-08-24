import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final createTimeout = config.require('createTimeout');
    final noTimeouts = pulumi_simple_index.ResourceType('noTimeouts', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final createOnly = pulumi_simple_index.ResourceType('createOnly', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: '5m'), ));
    final updateOnly = pulumi_simple_index.ResourceType('updateOnly', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(update: '10m'), ));
    final deleteOnly = pulumi_simple_index.ResourceType('deleteOnly', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(delete: '3m'), ));
    final readOnly = pulumi_simple_index.ResourceType('readOnly', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(read: '9m'), ));
    final allTimeouts = pulumi_simple_index.ResourceType('allTimeouts', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: '2m', update: '4m', delete: '1m', read: '5m'), ));
    final configTimeout = pulumi_simple_index.ResourceType('configTimeout', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: createTimeout), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
