import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:read/index.dart' as read_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = read_index.ResourceType.get('res', ('existing-id').input(), state: read_index.ResourceState(lookup: ('existing-key').input(), ));

    _outputProperties = [
      pulumi.OutputProperty('resourceId', pulumi.output(res.id).apply<Object?>((value) => value)),
      pulumi.OutputProperty('resourceUrn', pulumi.output(res.urn).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookup', pulumi.output(res.lookup).apply<Object?>((value) => value)),
      pulumi.OutputProperty('value', pulumi.output(res.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
