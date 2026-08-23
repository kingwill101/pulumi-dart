import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';

/// Updates the service-managed configuration for a stack. The request body sets the ESC environment reference that points the stack at a service-backed configuration. If stack configuration is returned by the API, it is used in place of the local stack config file (e.g. Pulumi.[stack].yaml). Returns the updated configuration object. Returns 400 if the environment reference is invalid or not found. The 'secretsProvider', 'encryptedKey', and 'encryptionSalt' fields are deprecated; new callers should omit them.
class Config extends pulumi.CustomResource {
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  late final pulumi.Output<String?> encryptedKey;
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  late final pulumi.Output<String?> encryptionSalt;
  /// Reference to ESC environment to use as stack configuration.
  late final pulumi.Output<String> environment;
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  late final pulumi.Output<String?> secretsProvider;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_api_stacks_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/stacks:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    encryptedKey = registerOutput<String?>('encryptedKey');
    encryptionSalt = registerOutput<String?>('encryptionSalt');
    environment = registerOutput<String>('environment');
    secretsProvider = registerOutput<String?>('secretsProvider');
  }
}
