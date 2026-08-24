import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_replaceonchanges/index.dart' as pulumi_replaceonchanges_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final schemaReplace = pulumi_replaceonchanges_index.ResourceA('schemaReplace', args: pulumi_replaceonchanges_index.ResourceAArgs(value: pulumi.Input.asInput(true), replaceProp: pulumi.Input.asInput(false), ));
    final optionReplace = pulumi_replaceonchanges_index.ResourceB('optionReplace', args: pulumi_replaceonchanges_index.ResourceBArgs(value: pulumi.Input.asInput(false), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final bothReplaceValue = pulumi_replaceonchanges_index.ResourceA('bothReplaceValue', args: pulumi_replaceonchanges_index.ResourceAArgs(value: pulumi.Input.asInput(false), replaceProp: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final bothReplaceProp = pulumi_replaceonchanges_index.ResourceA('bothReplaceProp', args: pulumi_replaceonchanges_index.ResourceAArgs(value: pulumi.Input.asInput(true), replaceProp: pulumi.Input.asInput(false), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final regularUpdate = pulumi_replaceonchanges_index.ResourceB('regularUpdate', args: pulumi_replaceonchanges_index.ResourceBArgs(value: pulumi.Input.asInput(false), ));
    final noChange = pulumi_replaceonchanges_index.ResourceB('noChange', args: pulumi_replaceonchanges_index.ResourceBArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final wrongPropChange = pulumi_replaceonchanges_index.ResourceA('wrongPropChange', args: pulumi_replaceonchanges_index.ResourceAArgs(value: pulumi.Input.asInput(true), replaceProp: pulumi.Input.asInput(false), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));
    final multiplePropReplace = pulumi_replaceonchanges_index.ResourceA('multiplePropReplace', args: pulumi_replaceonchanges_index.ResourceAArgs(value: pulumi.Input.asInput(false), replaceProp: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value', 'replaceProp'], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
