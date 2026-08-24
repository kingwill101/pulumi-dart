import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_docs/index.dart' as pulumi_docs_index;
import 'package:pulumi_enum/index.dart' as pulumi_enum_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final enumRes = pulumi_enum_index.Res('enumRes', args: pulumi_enum_index.ResArgs(intEnum: pulumi.Input.asInput(pulumi_enum_index.IntEnum.fromValue(1)), stringEnum: pulumi.Input.asInput(pulumi_enum_index.StringEnum.fromValue('one')), ));
    final res = pulumi_docs_index.ResourceType('res', args: pulumi_docs_index.ResourceArgs(in_: pulumi.Input.asInput(pulumi.output(pulumi_docs_index.funOutput(pulumi_docs_index.FunArgs(in_: (false).input())).apply<dynamic>((value) => value.out)).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), externalEnum: pulumi.Input.asInput(pulumi_enum_index.StringEnum.fromValue('one')), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
