import 'package:pulumi/pulumi.dart' as pulumi;
import 'bit_bucket_integration_args.dart';

/// Updates an existing BitBucket integration's settings, such as PR comment preferences and AI summary options.
class BitBucketIntegration extends pulumi.CustomResource {
  /// The authentication type used: 'workspace_token', 'user_token', or 'pat'.
  late final pulumi.Output<String?> authType;
  /// The user whose BitBucket OAuth token is being used for authentication, if user-based auth is configured.
  late final pulumi.Output<dynamic> authUser;
  /// URL of the BitBucket workspace avatar image.
  late final pulumi.Output<String?> avatarUrl;
  /// Whether detailed property-level diffs are disabled for PR comments.
  late final pulumi.Output<bool> disableDetailedDiff;
  /// Whether Neo AI summaries are disabled for this integration.
  late final pulumi.Output<bool> disableNeoSummaries;
  /// Whether PR comments are disabled for this integration.
  late final pulumi.Output<bool> disablePRComments;
  /// Whether this integration is fully installed and operational.
  late final pulumi.Output<bool> installed;
  /// Whether the integration's credentials are currently valid.
  late final pulumi.Output<bool> valid;
  /// Display name of the BitBucket workspace.
  late final pulumi.Output<String?> workspaceName;
  /// The slug (URL-friendly name) of the linked BitBucket workspace.
  late final pulumi.Output<String> workspaceSlug;
  /// The UUID of the linked BitBucket workspace.
  late final pulumi.Output<String> workspaceUuid;

  /// Creates a new [BitBucketIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BitBucketIntegration]. {@macro pulumi_api_integrations_bit_bucket_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BitBucketIntegration(
    String name, {
    BitBucketIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/integrations:BitBucketIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authType = registerOutput<String?>('authType');
    authUser = registerOutput<dynamic>('authUser');
    avatarUrl = registerOutput<String?>('avatarUrl');
    disableDetailedDiff = registerOutput<bool>('disableDetailedDiff');
    disableNeoSummaries = registerOutput<bool>('disableNeoSummaries');
    disablePRComments = registerOutput<bool>('disablePRComments');
    installed = registerOutput<bool>('installed');
    valid = registerOutput<bool>('valid');
    workspaceName = registerOutput<String?>('workspaceName');
    workspaceSlug = registerOutput<String>('workspaceSlug');
    workspaceUuid = registerOutput<String>('workspaceUuid');
  }
}
