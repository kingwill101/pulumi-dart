import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_grpc/index.dart' as pulumi_config_grpc_index;
import 'package:pulumi_config_grpc/providers.dart' as pulumi_config_grpc_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final configGrpcProvider = pulumi_config_grpc_providers.ProviderProvider('config_grpc_provider', args: pulumi_config_grpc_providers.ProviderArgs(string1: pulumi.Input.asInput(pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: (pulumi.output('SECRET').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.string1)).apply<String?>((value) => value == null ? null : (value).toString())), int1: pulumi.Input.asInput(pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(int1: (pulumi.output(1234567890).apply<int>((value) => value as int)).input())).apply<dynamic>((value) => value.int1)).apply<int?>((value) => value == null ? null : value is String ? int.parse((value).toString()) : (value as num).toInt())), num1: pulumi.Input.asInput(pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(num1: (pulumi.output((123456.789).toDouble()).apply<double>((value) => value as double)).input())).apply<dynamic>((value) => value.num1)).apply<double?>((value) => value == null ? null : value is String ? double.parse((value).toString()) : (value as num).toDouble())), bool1: pulumi.Input.asInput(pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(bool1: (pulumi.output(true).apply<bool>((value) => value as bool)).input())).apply<dynamic>((value) => value.bool1)).apply<bool?>((value) => value == null ? null : value is String ? bool.parse((value).toString()) : value as bool)), listString1: pulumi.Input.asInput(pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(listString1: (pulumi.output(<String>['SECRET', 'SECRET2']).apply<List<String>>((value) => (value as List).cast<String>())).input())).apply<dynamic>((value) => value.listString1)).apply<List<String>?>((value) => value == null ? null : (value as List).cast<String>())), listString2: pulumi.Input.asInput(pulumi.inputList<String>(<pulumi.Input<String>>[('VALUE').input(), (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: (pulumi.output('SECRET').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.string1)).apply<String>((value) => (value).toString())).input()]) as pulumi.Input<List<String>>), mapString2: pulumi.Input.asInput(pulumi.inputMap<String>(<String, pulumi.Input<String>>{'key1': ('value1').input(), 'key2': (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: (pulumi.output('SECRET').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.string1)).apply<String>((value) => (value).toString())).input()}) as pulumi.Input<Map<String, String>>), objString2: pulumi.Input.asInput(pulumi_config_grpc_index.Tstring2(x: (pulumi.output(pulumi_config_grpc_index.toSecretOutput(pulumi_config_grpc_index.ToSecretArgs(string1: (pulumi.output('SECRET').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.string1)).apply<String?>((value) => value == null ? null : (value).toString())).input())), ));
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
