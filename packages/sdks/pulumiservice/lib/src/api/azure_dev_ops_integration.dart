import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_integration_args.dart';

/// Updates an existing Azure DevOps integration's settings. Can modify the Azure DevOps organization, project, or authentication configuration.
class AzureDevOpsIntegration extends pulumi.CustomResource {
  /// The Pulumi user whose Azure DevOps authentication token is being used
  late final pulumi.Output<dynamic> authUser;
  /// Whether detailed property-level diffs are disabled for PR comments
  late final pulumi.Output<bool?> disableDetailedDiff;
  /// Whether Neo AI summaries are disabled for this integration
  late final pulumi.Output<bool?> disableNeoSummaries;
  /// Whether PR comments are disabled for this integration
  late final pulumi.Output<bool?> disablePRComments;
  /// Does the org have an Azure DevOps app integration configured
  late final pulumi.Output<bool> installed;
  /// Metadata about the Azure DevOps organization linked to the Pulumi organization
  late final pulumi.Output<dynamic> organization;
  /// Metadata about the Azure DevOps project linked to the Pulumi organization
  late final pulumi.Output<dynamic> project;
  /// Is the app integration valid
  late final pulumi.Output<bool> valid;

  /// Creates a new [AzureDevOpsIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureDevOpsIntegration]. {@macro pulumi_api_integrations_azure_dev_ops_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureDevOpsIntegration(
    String name, {
    AzureDevOpsIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/integrations:AzureDevOpsIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authUser = registerOutput<dynamic>('authUser');
    disableDetailedDiff = registerOutput<bool?>('disableDetailedDiff');
    disableNeoSummaries = registerOutput<bool?>('disableNeoSummaries');
    disablePRComments = registerOutput<bool?>('disablePRComments');
    installed = registerOutput<bool>('installed');
    organization = registerOutput<dynamic>('organization');
    project = registerOutput<dynamic>('project');
    valid = registerOutput<bool>('valid');
  }
}
