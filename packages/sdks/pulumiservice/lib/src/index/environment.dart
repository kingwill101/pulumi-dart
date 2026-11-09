import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';

/// An ESC Environment.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{project}/{environment}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:Environment my-environment my-org/my-project/my-environment
/// ```
///
/// The legacy format `{organization}/{environment}` is also accepted, and uses the `default` project.
class Environment extends pulumi.CustomResource {
  /// The environment's UUID. Use this as the `identity` value when pinning a custom RBAC role to this environment via a `PermissionLiteralExpressionEnvironment` in `OrganizationRole.permissions`, or pass it as the `id` of an `environmentRules` entry in `buildRolePermissions`.
  late final pulumi.Output<String?> environmentId;
  /// Environment name.
  late final pulumi.Output<String> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Revision number of the latest version.
  late final pulumi.Output<int> revision;
  /// Environment's yaml file.
  late final pulumi.Output<dynamic> yaml;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_index_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          additionalSecretOutputs: const ['yaml'],
        ) {
    environmentId = registerOutput<String?>('environmentId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    revision = registerOutput<int>('revision');
    yaml = registerOutput<dynamic>('yaml', isSecret: true);
  }

  /// Creates a typed reference to an existing [Environment] resource.
  Environment.reference(String urn)
    : super(
        'pulumiservice:index:Environment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['yaml'],
        isResourceReference: true,
      ) {
    environmentId = registerOutput<String?>('environmentId');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    revision = registerOutput<int>('revision');
    yaml = registerOutput<dynamic>('yaml', isSecret: true);
  }
}
