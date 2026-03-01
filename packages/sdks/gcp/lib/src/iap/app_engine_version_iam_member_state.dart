// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_version_iam_member_condition.dart';

/// Input properties used for looking up and filtering AppEngineVersionIamMember resources.
class AppEngineVersionIamMemberState {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? appId;
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<AppEngineVersionIamMemberCondition>? condition;
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.iap.AppEngineVersionIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;
  /// Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? service;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? versionId;

  /// Creates a new [AppEngineVersionIamMemberState].
  /// [appId] Used to find the parent resource to bind the IAM policy to
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [service] Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  /// [versionId] Used to find the parent resource to bind the IAM policy to
  AppEngineVersionIamMemberState({
    pulumi.Output<String>? appId,
    pulumi.Output<AppEngineVersionIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
    pulumi.Output<String>? service,
    pulumi.Output<String>? versionId,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      condition = pulumi.Input.asOptionalInput<AppEngineVersionIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role),
      service = pulumi.Input.asOptionalInput<String>(service),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AppEngineVersionIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'project': ?project,
      'role': ?role,
      'service': ?service,
      'versionId': ?versionId,
    };
  }

  factory AppEngineVersionIamMemberState.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionIamMemberState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<AppEngineVersionIamMemberCondition>(AppEngineVersionIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

