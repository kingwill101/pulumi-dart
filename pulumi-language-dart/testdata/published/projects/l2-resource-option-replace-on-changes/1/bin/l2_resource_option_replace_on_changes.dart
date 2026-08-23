import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_replaceonchanges/index.dart' as replaceonchanges_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final schemaReplace = replaceonchanges_index.ResourceA('schemaReplace', args: replaceonchanges_index.ResourceAArgs(value: (true).input(), replaceProp: (false).input(), ));
    final optionReplace = replaceonchanges_index.ResourceB('optionReplace', args: replaceonchanges_index.ResourceBArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final bothReplaceValue = replaceonchanges_index.ResourceA('bothReplaceValue', args: replaceonchanges_index.ResourceAArgs(value: (false).input(), replaceProp: (true).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final bothReplaceProp = replaceonchanges_index.ResourceA('bothReplaceProp', args: replaceonchanges_index.ResourceAArgs(value: (true).input(), replaceProp: (false).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final regularUpdate = replaceonchanges_index.ResourceB('regularUpdate', args: replaceonchanges_index.ResourceBArgs(value: (false).input(), ));
    final noChange = replaceonchanges_index.ResourceB('noChange', args: replaceonchanges_index.ResourceBArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final wrongPropChange = replaceonchanges_index.ResourceA('wrongPropChange', args: replaceonchanges_index.ResourceAArgs(value: (true).input(), replaceProp: (false).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final multiplePropReplace = replaceonchanges_index.ResourceA('multiplePropReplace', args: replaceonchanges_index.ResourceAArgs(value: (false).input(), replaceProp: (true).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value', 'replaceProp'], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
