// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_iam_member_condition.dart';

/// Input properties used for looking up and filtering AccessPolicyIamMember resources.
class AccessPolicyIamMemberState {
  final pulumi.Input<AccessPolicyIamMemberCondition>? condition;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<String>? member;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? name;
  /// The role that should be applied. Only one
  /// `gcp.accesscontextmanager.AccessPolicyIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [AccessPolicyIamMemberState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [role] The role that should be applied. Only one
  AccessPolicyIamMemberState({
    pulumi.Output<AccessPolicyIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? name,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<AccessPolicyIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AccessPolicyIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'name': ?name,
      'role': ?role,
    };
  }

  factory AccessPolicyIamMemberState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<AccessPolicyIamMemberCondition>(AccessPolicyIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

