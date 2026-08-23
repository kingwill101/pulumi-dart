import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';

/// Creates a new Pulumi ESC (Environments, Secrets, and Configuration) environment within the specified organization. The request body must include the project name and the environment name. Environment names must be unique within a project and may only contain alphanumeric characters, hyphens, underscores, and periods. The newly created environment starts with an empty YAML definition that can be updated via the UpdateEnvironment endpoint.
class Environment extends pulumi.CustomResource {
  /// Raw YAML body content.
  late final pulumi.Output<String?> yaml;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_api_esc_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    yaml = registerOutput<String?>('yaml');
  }
}
