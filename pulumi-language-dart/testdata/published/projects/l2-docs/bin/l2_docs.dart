import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_docs/index.dart' as docs_index;
import 'package:pulumi_enum/index.dart' as enum__index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final enumRes = enum__index.Res('enumRes', args: enum__index.ResArgs(intEnum: (enum__index.IntEnum.fromValue(1)).input(), stringEnum: (enum__index.StringEnum.fromValue('one')).input(), ));
    final res = docs_index.ResourceType('res', args: docs_index.ResourceArgs(in_: (pulumi.output(docs_index.funOutput(docs_index.FunArgs(in_: (false).input())).apply((value) => value.out)).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), externalEnum: (enum__index.StringEnum.fromValue('one')).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
