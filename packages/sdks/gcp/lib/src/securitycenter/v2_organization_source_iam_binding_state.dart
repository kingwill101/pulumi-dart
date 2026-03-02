// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_source_iam_binding_condition.dart';

/// Input properties used for looking up and filtering V2OrganizationSourceIamBinding resources.
class V2OrganizationSourceIamBindingState {
  final pulumi.Input<V2OrganizationSourceIamBindingCondition>? condition;
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
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? organization;
  /// The role that should be applied. Only one
  /// `gcp.securitycenter.V2OrganizationSourceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? source;

  /// Creates a new [V2OrganizationSourceIamBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [organization] Optional.
  /// [role] The role that should be applied. Only one
  /// [source] Used to find the parent resource to bind the IAM policy to
  V2OrganizationSourceIamBindingState({
    this.condition,
    this.etag,
    this.members,
    this.organization,
    this.role,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<V2OrganizationSourceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'organization': ?organization,
      'role': ?role,
      'source': ?source,
    };
  }

  factory V2OrganizationSourceIamBindingState.fromMap(Map<String, dynamic> map) {
    return V2OrganizationSourceIamBindingState(
      condition: map['condition'] == null ? null : (V2OrganizationSourceIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

