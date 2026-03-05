import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_assignment_args.dart';
import 'access_policy_assignment_state.dart';

/// Manages a Managed Redis Access Policy Assignment.
///
/// ## Import
///
/// Managed Redis Access Policy Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedredis/accessPolicyAssignment:AccessPolicyAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/redis1/databases/default/accessPolicyAssignments/00000000-0000-0000-0000-000000000000
/// ```
class AccessPolicyAssignment extends pulumi.CustomResource {
  /// The ID of the Managed Redis instance. Changing this forces a new Access Policy Assignment to be created.
  late final pulumi.Output<String> managedRedisId;
  /// The object ID of the Azure Active Directory user, group, service principal, or managed identity to assign the access policy to. Changing this forces a new Access Policy Assignment to be created.
  ///
  /// &gt; **Note:** Access Policy Assignments are created on the `default` database of the Managed Redis instance.
  late final pulumi.Output<String> objectId;

  /// Creates a new [AccessPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicyAssignment]. {@macro pulumi_managedredis_access_policy_assignment_access_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicyAssignment(
    String name, {
    AccessPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedredis/accessPolicyAssignment:AccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedRedisId = registerOutput<String>('managedRedisId');
    objectId = registerOutput<String>('objectId');
  }

  /// Gets an existing [AccessPolicyAssignment] resource's state with the given [name] and [id].
  static AccessPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    AccessPolicyAssignmentState? state,
  }) {
    return AccessPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedredis/accessPolicyAssignment:AccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedRedisId = registerOutput<String>('managedRedisId');
    objectId = registerOutput<String>('objectId');
  }
}
