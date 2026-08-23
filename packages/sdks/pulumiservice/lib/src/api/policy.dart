import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// Updates an authentication policy for an organization. Authentication policies define rules for how OIDC tokens are validated and what access they grant, including claim mappings, trust conditions, and role assignments. The policy definition cannot be empty.
///
/// The request body contains a `policies` array where each policy object includes:
/// - `decision`: `allow` or `deny`
/// - `tokenType`: `organization`, `team`, `personal`, or `runner`
/// - `teamName`: required when tokenType is `team`
/// - `userLogin`: required when tokenType is `personal`
/// - `runnerID`: required when tokenType is `runner`
/// - `authorizedPermissions`: array of permissions (only `admin` is supported for organization tokens)
/// - `rules`: object defining claim-matching rules for the token
///
/// For more information about authorization rules, refer to the [OIDC authorization policies documentation](https://www.pulumi.com/docs/pulumi-cloud/access-management/oidc/client/#configure-the-authorization-policies).
class Policy extends pulumi.CustomResource {
  /// The creation timestamp
  late final pulumi.Output<String?> created;
  /// The unique identifier
  late final pulumi.Output<String> issuerId;
  /// The last modification timestamp
  late final pulumi.Output<String?> modified;
  /// List of policies
  late final pulumi.Output<List<Map<String, dynamic>>> policies;
  /// The version number
  late final pulumi.Output<int> version;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_api_auth_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/auth:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String?>('created');
    issuerId = registerOutput<String>('issuerId');
    modified = registerOutput<String?>('modified');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
    version = registerOutput<int>('version');
  }
}
