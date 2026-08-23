import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_args.dart';

/// Creates a new stack within a project in the organization. If the project does not exist, it will be created. A stack is an isolated, independently configurable instance of a Pulumi program, typically representing a deployment environment (e.g., development, staging, production). The stack name must be unique within the project.
///
/// The optional `config` object supports:
/// - `environment`: reference to an ESC environment for storing stack configuration (must not already exist)
/// - `secretsProvider`: the secrets provider for the stack
/// - `encryptedKey`: KMS-encrypted ciphertext for the data key (cloud-based secrets providers only)
/// - `encryptionSalt`: base64-encoded encryption salt (passphrase-based secrets providers only)
class Stack extends pulumi.CustomResource {
  /// The active update
  late final pulumi.Output<String> activeUpdate;
  /// Optional cloud-persisted stack configuration.
  /// If set, then the stack's configuration is loaded from the cloud and not a file on disk.
  late final pulumi.Output<dynamic> config;
  /// CurrentOperation provides information about a stack operation in-progress, as applicable.
  late final pulumi.Output<dynamic> currentOperation;
  /// The organization name
  late final pulumi.Output<String> orgName;
  /// The project name
  late final pulumi.Output<String> projectName;
  /// The stack name
  late final pulumi.Output<String> stackName;
  /// Map of tags
  late final pulumi.Output<Map<String, dynamic>?> tags;
  /// The version number
  late final pulumi.Output<int> version;

  /// Creates a new [Stack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stack]. {@macro pulumi_api_stacks_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stack(
    String name, {
    StackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/stacks:Stack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeUpdate = registerOutput<String>('activeUpdate');
    config = registerOutput<dynamic>('config');
    currentOperation = registerOutput<dynamic>('currentOperation');
    orgName = registerOutput<String>('orgName');
    projectName = registerOutput<String>('projectName');
    stackName = registerOutput<String>('stackName');
    tags = registerOutput<Map<String, dynamic>?>('tags');
    version = registerOutput<int>('version');
  }
}
