import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_grpc/index.dart' as pulumi_config_grpc_index;
import 'package:pulumi_config_grpc/providers.dart' as pulumi_config_grpc_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final configGrpcProvider = pulumi_config_grpc_providers.ProviderProvider('config_grpc_provider', args: pulumi_config_grpc_providers.ProviderArgs(string1: pulumi.Input.asInput(''), string2: pulumi.Input.asInput('x'), string3: pulumi.Input.asInput('{}'), int1: pulumi.Input.asInput(0), int2: pulumi.Input.asInput(42), num1: pulumi.Input.asInput((0).toDouble()), num2: pulumi.Input.asInput((42.42).toDouble()), bool1: pulumi.Input.asInput(true), bool2: pulumi.Input.asInput(false), listString1: pulumi.Input.asInput(<String>[]), listString2: pulumi.Input.asInput(<String>['', 'foo']), listInt1: pulumi.Input.asInput(<int>[1, 2]), mapString1: pulumi.Input.asInput(<String, String>{}), mapString2: pulumi.Input.asInput(<String, String>{'key1': 'value1', 'key2': 'value2'}), mapInt1: pulumi.Input.asInput(<String, int>{'key1': 0, 'key2': 42}), objString1: pulumi.Input.asInput(pulumi_config_grpc_index.Tstring1()), objString2: pulumi.Input.asInput(pulumi_config_grpc_index.Tstring2(x: ('x-value').input())), objInt1: pulumi.Input.asInput(pulumi_config_grpc_index.Tint1(x: (42).input())), ));
    final config = pulumi_config_grpc_index.ConfigFetcher('config', options: pulumi.CustomResourceOptions(provider: configGrpcProvider, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
