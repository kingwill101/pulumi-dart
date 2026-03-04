import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_restrictions_response.dart';
import 'workforce_pool_args.dart';

/// Creates a new WorkforcePool. You cannot reuse the name of a deleted pool until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class WorkforcePool extends pulumi.CustomResource {
  /// Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  late final pulumi.Output<AccessRestrictionsResponse> accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  late final pulumi.Output<String> description;

  /// Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  late final pulumi.Output<bool> disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  late final pulumi.Output<String> displayName;

  /// Time after which the workforce pool will be permanently purged and cannot be recovered.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;

  /// The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  late final pulumi.Output<String> name;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  late final pulumi.Output<String> parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  late final pulumi.Output<String> sessionDuration;

  /// The state of the pool.
  late final pulumi.Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String?> workforcePoolId;

  /// Creates a new [WorkforcePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkforcePool]. {@macro pulumi_iam_v1_workforce_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkforcePool(
    String name, {
    WorkforcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:iam/v1:WorkforcePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRestrictions = registerOutput<AccessRestrictionsResponse>(
      'accessRestrictions',
    );
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    displayName = registerOutput<String>('displayName');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    sessionDuration = registerOutput<String>('sessionDuration');
    state = registerOutput<String>('state');
    workforcePoolId = registerOutput<String?>('workforcePoolId');
  }
}
