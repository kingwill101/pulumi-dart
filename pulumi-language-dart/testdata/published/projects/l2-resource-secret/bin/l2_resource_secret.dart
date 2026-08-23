import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_secret/pulumi_secret.dart' as secret;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = secret.index.ResourceType('res', args: secret.index.ResourceArgs(private: (pulumi.secretInput(('closed').input())).input(), public: ('open').input(), privateData: (pulumi.secretInput((secret.index.DataArgs(private: ('closed').input(), public: ('open').input())).input())).input(), publicData: (secret.index.DataArgs(private: ('closed').input(), public: ('open').input())).input(), privateArray: (pulumi.secretInput((['closed']).input())).input(), privateMap: (pulumi.secretInput(({'key': 'closed'}).input())).input(), privateDataArray: (pulumi.secretInput(([secret.index.DataArgs(private: ('closed').input(), public: ('open').input())]).input())).input(), privateDataMap: (pulumi.secretInput(({'key': secret.index.DataArgs(private: ('closed').input(), public: ('open').input())}).input())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
