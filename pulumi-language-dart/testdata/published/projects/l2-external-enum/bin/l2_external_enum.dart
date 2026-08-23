import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_enum/index.dart' as enum__index;
import 'package:pulumi_extenumref/index.dart' as extenumref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final myRes = enum__index.Res('myRes', args: enum__index.ResArgs(intEnum: (enum__index.IntEnum.fromValue(1)).input(), stringEnum: (enum__index.StringEnum.fromValue('one')).input(), ));
    final mySink = extenumref_index.Sink('mySink', args: extenumref_index.SinkArgs(stringEnum: (enum__index.StringEnum.fromValue('two')).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
