import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_grpc/index.dart' as pulumi_config_grpc_index;
import 'package:pulumi_config_grpc/providers.dart' as pulumi_config_grpc_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final configGrpcProvider = pulumi_config_grpc_providers.ProviderProvider('config_grpc_provider', args: pulumi_config_grpc_providers.ProviderArgs(string1: ('').input(), string2: ('x').input(), string3: ('{}').input(), int1: (0).input(), int2: (42).input(), num1: ((0).toDouble()).input(), num2: ((42.42).toDouble()).input(), bool1: (true).input(), bool2: (false).input(), listString1: (<String>[]).input(), listString2: (<String>['', 'foo']).input(), listInt1: (<int>[1, 2]).input(), mapString1: (<String, String>{}).input(), mapString2: (<String, String>{'key1': 'value1', 'key2': 'value2'}).input(), mapInt1: (<String, int>{'key1': 0, 'key2': 42}).input(), objString1: (pulumi_config_grpc_index.Tstring1()).input(), objString2: (pulumi_config_grpc_index.Tstring2(x: ('x-value').input())).input(), objInt1: (pulumi_config_grpc_index.Tint1(x: (42).input())).input(), ));
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
