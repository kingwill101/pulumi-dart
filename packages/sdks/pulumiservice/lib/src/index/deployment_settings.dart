import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_args.dart';
import 'deployment_settings_cache_options.dart';
import 'deployment_settings_executor_context.dart';
import 'deployment_settings_github.dart';
import 'deployment_settings_operation_context.dart';
import 'deployment_settings_source_context.dart';

/// Deployment settings configure Pulumi Deployments for a stack.
///
/// ### Import
///
/// Deployment settings can be imported using the `id`, which for deployment settings is `{org}/{project}/{stack}` e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:DeploymentSettings my_settings my-org/my-project/my-stack
/// ```
class DeploymentSettings extends pulumi.CustomResource {
  /// The agent pool identifier to use for the deployment.
  late final pulumi.Output<String?> agentPoolId;

  /// Dependency cache settings for the deployment
  late final pulumi.Output<DeploymentSettingsCacheOptions?> cacheOptions;

  /// Settings related to the deployment executor.
  late final pulumi.Output<DeploymentSettingsExecutorContext?> executorContext;

  /// GitHub settings for the deployment.
  late final pulumi.Output<DeploymentSettingsGithub?> github;

  /// Settings related to the Pulumi operation environment during the deployment.
  late final pulumi.Output<DeploymentSettingsOperationContext?>
  operationContext;

  /// Organization name.
  late final pulumi.Output<String> organization;

  /// Project name.
  late final pulumi.Output<String> project;

  /// Settings related to the source of the deployment.
  late final pulumi.Output<DeploymentSettingsSourceContext?> sourceContext;

  /// Stack name.
  late final pulumi.Output<String> stack;

  /// Creates a new [DeploymentSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentSettings]. {@macro pulumi_index_deployment_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentSettings(
    String name, {
    DeploymentSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'pulumiservice:index:DeploymentSettings',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentPoolId = registerOutput<String?>('agentPoolId');
    cacheOptions = registerOutput<DeploymentSettingsCacheOptions?>(
      'cacheOptions',
    );
    executorContext = registerOutput<DeploymentSettingsExecutorContext?>(
      'executorContext',
    );
    github = registerOutput<DeploymentSettingsGithub?>('github');
    operationContext = registerOutput<DeploymentSettingsOperationContext?>(
      'operationContext',
    );
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    sourceContext = registerOutput<DeploymentSettingsSourceContext?>(
      'sourceContext',
    );
    stack = registerOutput<String>('stack');
  }
}
