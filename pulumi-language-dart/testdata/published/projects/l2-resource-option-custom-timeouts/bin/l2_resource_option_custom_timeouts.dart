import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final createTimeout = config.require('createTimeout');
    final noTimeouts = simple_index.ResourceType('noTimeouts', args: simple_index.ResourceArgs(value: (true).input(), ));
    final createOnly = simple_index.ResourceType('createOnly', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: '5m'), ));
    final updateOnly = simple_index.ResourceType('updateOnly', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(update: '10m'), ));
    final deleteOnly = simple_index.ResourceType('deleteOnly', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(delete: '3m'), ));
    final readOnly = simple_index.ResourceType('readOnly', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(read: '9m'), ));
    final allTimeouts = simple_index.ResourceType('allTimeouts', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: '2m', update: '4m', delete: '1m', read: '5m'), ));
    final configTimeout = simple_index.ResourceType('configTimeout', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(customTimeouts: pulumi.CustomTimeouts(create: createTimeout), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
