import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<String?> secretString1;
  late final pulumi.Output<String?> secretString2;
  late final pulumi.Output<String?> secretString3;
  late final pulumi.Output<String?> string1;
  late final pulumi.Output<String?> string2;
  late final pulumi.Output<String?> string3;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config-grpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.0.0').merge(options),
          additionalSecretOutputs: const ['secretString1', 'secretString2', 'secretString3'],
        ) {
    secretString1 = registerOutput<String?>('secretString1', isSecret: true);
    secretString2 = registerOutput<String?>('secretString2', isSecret: true);
    secretString3 = registerOutput<String?>('secretString3', isSecret: true);
    string1 = registerOutput<String?>('string1');
    string2 = registerOutput<String?>('string2');
    string3 = registerOutput<String?>('string3');
  }
}
