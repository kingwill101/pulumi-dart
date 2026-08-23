import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_secret/index.dart' as secret_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = secret_index.ResourceType('res', args: secret_index.ResourceArgs(private: (pulumi.secretInput(('closed').input())).input(), public: ('open').input(), privateData: (pulumi.secretInput((secret_index.Data(private: ('closed').input(), public: ('open').input())).input())).input(), publicData: (secret_index.Data(private: ('closed').input(), public: ('open').input())).input(), privateArray: (pulumi.secretInput((['closed']).input())).input(), privateMap: (pulumi.secretInput(({'key': 'closed'}).input())).input(), privateDataArray: (pulumi.secretInput(([secret_index.Data(private: ('closed').input(), public: ('open').input())]).input())).input(), privateDataMap: (pulumi.secretInput(({'key': secret_index.Data(private: ('closed').input(), public: ('open').input())}).input())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
