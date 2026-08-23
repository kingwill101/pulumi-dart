import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_grpc/index.dart' as pulumi_config_grpc_index;
import 'package:pulumi_config_grpc/providers.dart' as pulumi_config_grpc_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final configGrpcProvider = pulumi_config_grpc_providers.ProviderProvider('config_grpc_provider', args: pulumi_config_grpc_providers.ProviderArgs(secretString1: (pulumi.secretInput(('SECRET').input())).input(), secretInt1: (pulumi.secretInput((16).input())).input(), secretNum1: (pulumi.secretInput(((123456.789).toDouble()).input())).input(), secretBool1: (pulumi.secretInput((true).input())).input(), listSecretString1: (pulumi.secretInput((<String>['SECRET', 'SECRET2']).input())).input(), mapSecretString1: (pulumi.secretInput((<String, String>{'key1': 'SECRET', 'key2': 'SECRET2'}).input())).input(), objSecretString1: (pulumi.secretInput((pulumi_config_grpc_index.TsecretString1(secretX: ('SECRET').input())).input())).input(), ));
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
