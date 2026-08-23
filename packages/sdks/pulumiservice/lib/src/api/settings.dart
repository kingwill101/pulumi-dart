import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_args.dart';

/// Creates or updates Pulumi Deployments settings for a stack using a merge operation. If no settings exist, they are created. If settings already exist, the request body is merged with the current settings using the following logic: for each property, start with the current value, remove it if the patch specifies null, or merge the new non-null value with the existing one. Non-object properties (strings, numbers, booleans) are replaced entirely. Settings include source context (git repository URL, branch, directory), operation context (environment variables, pre-run commands, OIDC configuration), executor context, GitHub integration settings, and cache options. Requires a Team Growth or higher subscription. Cannot be used to configure Pulumi Deployments for Terraform stacks.
class Settings extends pulumi.CustomResource {
  /// The identifier of the agent pool to use for deployments.
  late final pulumi.Output<String?> agentPoolID;
  /// Cache options for the deployment.
  late final pulumi.Output<dynamic> cacheOptions;
  /// The executor context defining the execution environment.
  late final pulumi.Output<dynamic> executorContext;
  /// GitHub-specific deployment settings
  late final pulumi.Output<dynamic> gitHub;
  /// The operation context defining pre-run and post-run commands and environment variables.
  late final pulumi.Output<dynamic> operationContext;
  /// The source from which the deployment settings were created.
  late final pulumi.Output<String?> source;
  /// The source context defining where the source code is located.
  late final pulumi.Output<dynamic> sourceContext;
  /// A tag to identify the deployment settings configuration.
  late final pulumi.Output<String?> tag;
  /// VCS provider settings
  late final pulumi.Output<dynamic> vcs;
  /// The version of the deployment settings.
  late final pulumi.Output<int?> version;

  /// Creates a new [Settings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Settings]. {@macro pulumi_api_deployments_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Settings(
    String name, {
    SettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/deployments:Settings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPoolID = registerOutput<String?>('agentPoolID');
    cacheOptions = registerOutput<dynamic>('cacheOptions');
    executorContext = registerOutput<dynamic>('executorContext');
    gitHub = registerOutput<dynamic>('gitHub');
    operationContext = registerOutput<dynamic>('operationContext');
    source = registerOutput<String?>('source');
    sourceContext = registerOutput<dynamic>('sourceContext');
    tag = registerOutput<String?>('tag');
    vcs = registerOutput<dynamic>('vcs');
    version = registerOutput<int?>('version');
  }
}
