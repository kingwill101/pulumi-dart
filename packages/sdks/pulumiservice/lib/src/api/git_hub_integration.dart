import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_integration_args.dart';

/// Updates GitHub App integration settings.
class GitHubIntegration extends pulumi.CustomResource {
  /// The GitHub account ID (user or org).
  late final pulumi.Output<int?> accountID;
  /// The GitHub account name (login).
  late final pulumi.Output<String?> accountName;
  /// The avatar URL of the GitHub account.
  late final pulumi.Output<String?> avatarUrl;
  /// When the installation was created.
  late final pulumi.Output<String?> created;
  /// Whether code access for AI reviews is disabled for this installation.
  late final pulumi.Output<bool> disableCodeAccessForReviews;
  /// Whether detailed property-level diffs are disabled for PR comments.
  late final pulumi.Output<bool> disableDetailedDiff;
  /// Whether PR comments are disabled while a pull request is in draft.
  late final pulumi.Output<bool?> disableDraftPRComments;
  /// Whether Neo AI summaries are disabled for this installation.
  late final pulumi.Output<bool> disableNeoSummaries;
  /// Whether PR comments are disabled for this installation.
  late final pulumi.Output<bool> disablePRComments;
  /// URL to configure repository access for this GitHub App installation.
  late final pulumi.Output<dynamic> ghUrls;
  /// Whether the installation has the 'contents' permission.
  late final pulumi.Output<bool> hasContentsPermission;
  /// Whether the installation has the 'members' permission (only relevant for organization accounts).
  late final pulumi.Output<bool> hasMembersPermission;
  /// Whether per-user (individual) GitHub Enterprise authentication is enabled. Only applies to self-hosted GitHub Enterprise installations.
  late final pulumi.Output<bool?> individualAuthEnabled;
  /// The GitHub installation ID.
  late final pulumi.Output<int> installationID;
  /// Whether the GitHub account is an organization (as opposed to a personal account).
  late final pulumi.Output<bool> isOrganization;
  /// Whether this is a self-hosted GitHub Enterprise installation.
  late final pulumi.Output<bool> isSelfHosted;
  /// Neo GitHub App permission requirements for this installation.
  late final pulumi.Output<List<dynamic>?> neoGitHubAppPermissionRequirements;

  /// Creates a new [GitHubIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GitHubIntegration]. {@macro pulumi_api_integrations_git_hub_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GitHubIntegration(
    String name, {
    GitHubIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/integrations:GitHubIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountID = registerOutput<int?>('accountID');
    accountName = registerOutput<String?>('accountName');
    avatarUrl = registerOutput<String?>('avatarUrl');
    created = registerOutput<String?>('created');
    disableCodeAccessForReviews = registerOutput<bool>('disableCodeAccessForReviews');
    disableDetailedDiff = registerOutput<bool>('disableDetailedDiff');
    disableDraftPRComments = registerOutput<bool?>('disableDraftPRComments');
    disableNeoSummaries = registerOutput<bool>('disableNeoSummaries');
    disablePRComments = registerOutput<bool>('disablePRComments');
    ghUrls = registerOutput<dynamic>('ghUrls');
    hasContentsPermission = registerOutput<bool>('hasContentsPermission');
    hasMembersPermission = registerOutput<bool>('hasMembersPermission');
    individualAuthEnabled = registerOutput<bool?>('individualAuthEnabled');
    installationID = registerOutput<int>('installationID');
    isOrganization = registerOutput<bool>('isOrganization');
    isSelfHosted = registerOutput<bool>('isSelfHosted');
    neoGitHubAppPermissionRequirements = registerOutput<List<dynamic>?>('neoGitHubAppPermissionRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }

  /// Creates a typed reference to an existing [GitHubIntegration] resource.
  GitHubIntegration.reference(String urn)
    : super(
        'pulumiservice:api/integrations:GitHubIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountID = registerOutput<int?>('accountID');
    accountName = registerOutput<String?>('accountName');
    avatarUrl = registerOutput<String?>('avatarUrl');
    created = registerOutput<String?>('created');
    disableCodeAccessForReviews = registerOutput<bool>('disableCodeAccessForReviews');
    disableDetailedDiff = registerOutput<bool>('disableDetailedDiff');
    disableDraftPRComments = registerOutput<bool?>('disableDraftPRComments');
    disableNeoSummaries = registerOutput<bool>('disableNeoSummaries');
    disablePRComments = registerOutput<bool>('disablePRComments');
    ghUrls = registerOutput<dynamic>('ghUrls');
    hasContentsPermission = registerOutput<bool>('hasContentsPermission');
    hasMembersPermission = registerOutput<bool>('hasMembersPermission');
    individualAuthEnabled = registerOutput<bool?>('individualAuthEnabled');
    installationID = registerOutput<int>('installationID');
    isOrganization = registerOutput<bool>('isOrganization');
    isSelfHosted = registerOutput<bool>('isSelfHosted');
    neoGitHubAppPermissionRequirements = registerOutput<List<dynamic>?>('neoGitHubAppPermissionRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }
}
