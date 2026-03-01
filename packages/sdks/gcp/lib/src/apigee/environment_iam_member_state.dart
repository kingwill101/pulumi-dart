// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_iam_member_condition.dart';

/// Input properties used for looking up and filtering EnvironmentIamMember resources.
class EnvironmentIamMemberState {
  final pulumi.Input<EnvironmentIamMemberCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? envId;
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
  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? orgId;
  /// The role that should be applied. Only one
  /// `gcp.apigee.EnvironmentIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [EnvironmentIamMemberState].
  /// [condition] Optional.
  /// [envId] Used to find the parent resource to bind the IAM policy to
  /// [etag] (Computed) The etag of the IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [orgId] The Apigee Organization associated with the Apigee environment,
  /// [role] The role that should be applied. Only one
  EnvironmentIamMemberState({
    pulumi.Output<EnvironmentIamMemberCondition>? condition,
    pulumi.Output<String>? envId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<EnvironmentIamMemberCondition>(condition),
      envId = pulumi.Input.asOptionalInput<String>(envId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<EnvironmentIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'envId': ?envId,
      'etag': ?etag,
      'member': ?member,
      'orgId': ?orgId,
      'role': ?role,
    };
  }

  factory EnvironmentIamMemberState.fromMap(Map<String, dynamic> map) {
    return EnvironmentIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<EnvironmentIamMemberCondition>(EnvironmentIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      envId: map['envId'] == null ? null : pulumi.Output.create<String>(map['envId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

