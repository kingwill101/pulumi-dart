import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_grpc/index.dart' as pulumi_config_grpc_index;
import 'package:pulumi_config_grpc/providers.dart' as pulumi_config_grpc_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final configGrpcProvider = pulumi_config_grpc_providers.ProviderProvider('config_grpc_provider', args: pulumi_config_grpc_providers.ProviderArgs(string1: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: ('SECRET').input())).apply((value) => value.string1)).apply<String?>((value) => value == null ? null : (value).toString())).input(), int1: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(int1: (1234567890).input())).apply((value) => value.int1)).apply<int?>((value) => value == null ? null : value is String ? int.parse((value).toString()) : (value as num).toInt())).input(), num1: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(num1: ((123456.789).toDouble()).input())).apply((value) => value.num1)).apply<double?>((value) => value == null ? null : value is String ? double.parse((value).toString()) : (value as num).toDouble())).input(), bool1: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(bool1: (true).input())).apply((value) => value.bool1)).apply<bool?>((value) => value == null ? null : value is String ? bool.parse((value).toString()) : value as bool)).input(), listString1: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(listString1: (<String>['SECRET', 'SECRET2']).input())).apply((value) => value.listString1)).apply<List<String>?>((value) => value == null ? null : (value as List).cast<String>())).input(), listString2: (pulumi.inputList<String>(<pulumi.Input<String>>[('VALUE').input(), (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: ('SECRET').input())).apply((value) => value.string1)).apply<String>((value) => (value).toString())).input()]) as pulumi.Input<List<String>>).input(), mapString2: (pulumi.inputMap<String>(<String, pulumi.Input<String>>{'key1': ('value1').input(), 'key2': (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: ('SECRET').input())).apply((value) => value.string1)).apply<String>((value) => (value).toString())).input()}) as pulumi.Input<Map<String, String>>).input(), objString2: (pulumi_config_grpc_index.Tstring2(x: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: ('SECRET').input())).apply((value) => value.string1)).apply<String?>((value) => value == null ? null : (value).toString())).input())).input(), ));
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
