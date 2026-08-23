import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_any_handled/index.dart' as any_handled_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final aString = any_handled_index.ResourceType('aString', args: any_handled_index.ResourceArgs(value: ('a string').input(), ));
    final aBoolean = any_handled_index.ResourceType('aBoolean', args: any_handled_index.ResourceArgs(value: (true).input(), ));
    final aNumber = any_handled_index.ResourceType('aNumber', args: any_handled_index.ResourceArgs(value: (42).input(), ));
    final aList = any_handled_index.ResourceType('aList', args: any_handled_index.ResourceArgs(value: ([1, true, 'three']).input(), ));
    final anObject = any_handled_index.ResourceType('anObject', args: any_handled_index.ResourceArgs(value: ({'key': 'value', 'nested': {'count': 1}}).input(), ));
    final anAsset = any_handled_index.ResourceType('anAsset', args: any_handled_index.ResourceArgs(value: (pulumi.StringAsset('the asset contents')).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
