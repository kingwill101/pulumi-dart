import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_secret/index.dart' as pulumi_secret_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_secret_index.ResourceType('res', args: pulumi_secret_index.ResourceArgs(private: pulumi.Input.asInput(pulumi.secretInput(('closed').input())), public: pulumi.Input.asInput('open'), privateData: pulumi.Input.asInput(pulumi.secretInput((pulumi_secret_index.Data(private: ('closed').input(), public: ('open').input())).input())), publicData: pulumi.Input.asInput(pulumi_secret_index.Data(private: ('closed').input(), public: ('open').input())), privateArray: pulumi.Input.asInput(pulumi.secretInput((<String>['closed']).input())), privateMap: pulumi.Input.asInput(pulumi.secretInput((<String, String>{'key': 'closed'}).input())), privateDataArray: pulumi.Input.asInput(pulumi.secretInput((<pulumi_secret_index.Data>[pulumi_secret_index.Data(private: ('closed').input(), public: ('open').input())]).input())), privateDataMap: pulumi.Input.asInput(pulumi.secretInput((<String, pulumi_secret_index.Data>{'key': pulumi_secret_index.Data(private: ('closed').input(), public: ('open').input())}).input())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
