import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_args.dart';
import 'deployment_settings_cache_options.dart';
import 'deployment_settings_executor_context.dart';
import 'deployment_settings_github.dart';
import 'deployment_settings_operation_context.dart';
import 'deployment_settings_source_context.dart';
import 'deployment_settings_vcs.dart';

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
  late final pulumi.Output<DeploymentSettingsOperationContext?> operationContext;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Settings related to the source of the deployment.
  late final pulumi.Output<DeploymentSettingsSourceContext?> sourceContext;
  /// Stack name.
  late final pulumi.Output<String> stack;
  /// VCS settings for the deployment. Supports Azure DevOps and GitHub via the 'provider' discriminator field.
  late final pulumi.Output<DeploymentSettingsVcs?> vcs;

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
    cacheOptions = registerOutput<DeploymentSettingsCacheOptions?>('cacheOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executorContext = registerOutput<DeploymentSettingsExecutorContext?>('executorContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsExecutorContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    github = registerOutput<DeploymentSettingsGithub?>('github', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsGithub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operationContext = registerOutput<DeploymentSettingsOperationContext?>('operationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsOperationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    sourceContext = registerOutput<DeploymentSettingsSourceContext?>('sourceContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsSourceContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stack = registerOutput<String>('stack');
    vcs = registerOutput<DeploymentSettingsVcs?>('vcs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSettingsVcs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
