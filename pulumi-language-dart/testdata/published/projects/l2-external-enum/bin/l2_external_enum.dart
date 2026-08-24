import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_enum/index.dart' as pulumi_enum_index;
import 'package:pulumi_extenumref/index.dart' as pulumi_extenumref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final myRes = pulumi_enum_index.Res('myRes', args: pulumi_enum_index.ResArgs(intEnum: pulumi.Input.asInput(pulumi_enum_index.IntEnum.fromValue(1)), stringEnum: pulumi.Input.asInput(pulumi_enum_index.StringEnum.fromValue('one')), ));
    final mySink = pulumi_extenumref_index.Sink('mySink', args: pulumi_extenumref_index.SinkArgs(stringEnum: pulumi.Input.asInput(pulumi_enum_index.StringEnum.fromValue('two')), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
