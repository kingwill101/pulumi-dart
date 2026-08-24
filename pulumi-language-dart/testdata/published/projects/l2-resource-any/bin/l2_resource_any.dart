import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_any_handled/index.dart' as pulumi_any_handled_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final aString = pulumi_any_handled_index.ResourceType('aString', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput('a string'), ));
    final aBoolean = pulumi_any_handled_index.ResourceType('aBoolean', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aNumber = pulumi_any_handled_index.ResourceType('aNumber', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput(42), ));
    final aList = pulumi_any_handled_index.ResourceType('aList', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput([1, true, 'three']), ));
    final anObject = pulumi_any_handled_index.ResourceType('anObject', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput({'key': 'value', 'nested': {'count': 1}}), ));
    final anAsset = pulumi_any_handled_index.ResourceType('anAsset', args: pulumi_any_handled_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.StringAsset('the asset contents')), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
