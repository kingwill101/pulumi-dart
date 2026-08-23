import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_integration_args.dart';

/// Updates an existing GitLab integration's settings, such as PR comment preferences and AI summary options.
class GitLabIntegration extends pulumi.CustomResource {
  /// The Pulumi user whose GitLab authentication token is being used, if applicable.
  late final pulumi.Output<dynamic> authUser;
  /// The URL of the GitLab group's avatar image.
  late final pulumi.Output<String?> avatarUrl;
  /// Whether detailed property-level diffs are disabled for PR comments.
  late final pulumi.Output<bool> disableDetailedDiff;
  /// Whether Neo AI summaries are disabled for this integration.
  late final pulumi.Output<bool> disableNeoSummaries;
  /// Whether PR comments are disabled for this integration.
  late final pulumi.Output<bool> disablePRComments;
  /// The GitLab group ID linked to this integration.
  late final pulumi.Output<int> gitLabGroupId;
  /// Metadata about the GitLab group linked to this integration.
  late final pulumi.Output<dynamic> gitLabOrg;
  /// The expiration date of the group access token, if one is being used for authentication.
  late final pulumi.Output<String?> groupAccessTokenExpiration;
  /// The display name of the GitLab group.
  late final pulumi.Output<String?> groupName;
  /// The URL-safe path of the GitLab group (e.g. 'parent-group/child-group').
  late final pulumi.Output<String?> groupPath;
  /// Whether the integration has been fully installed.
  late final pulumi.Output<bool> installed;
  /// Whether the integration is currently valid (tokens, hooks, etc.).
  late final pulumi.Output<bool> valid;

  /// Creates a new [GitLabIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GitLabIntegration]. {@macro pulumi_api_integrations_git_lab_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GitLabIntegration(
    String name, {
    GitLabIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/integrations:GitLabIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authUser = registerOutput<dynamic>('authUser');
    avatarUrl = registerOutput<String?>('avatarUrl');
    disableDetailedDiff = registerOutput<bool>('disableDetailedDiff');
    disableNeoSummaries = registerOutput<bool>('disableNeoSummaries');
    disablePRComments = registerOutput<bool>('disablePRComments');
    gitLabGroupId = registerOutput<int>('gitLabGroupId');
    gitLabOrg = registerOutput<dynamic>('gitLabOrg');
    groupAccessTokenExpiration = registerOutput<String?>('groupAccessTokenExpiration');
    groupName = registerOutput<String?>('groupName');
    groupPath = registerOutput<String?>('groupPath');
    installed = registerOutput<bool>('installed');
    valid = registerOutput<bool>('valid');
  }
}
