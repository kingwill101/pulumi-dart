// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_iam_member_condition.dart';

/// Input properties used for looking up and filtering DatasetIamMember resources.
class DatasetIamMemberState {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<DatasetIamMemberCondition>? condition;
  /// The dataset ID.
  final pulumi.Input<String>? datasetId;
  /// (Computed) The etag of the dataset's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **iamMember:{principal}**: Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group. This is used for example for workload/workforce federated identities (principal, principalSet).
  /// * **projectOwners**: A special identifier that represents the Owners of the project of the dataset.
  /// * **projectReaders**: A special identifier that represents the Viewers of the project of the dataset.
  /// * **projectWriters**: A special identifier that represents the Editors of the project of the dataset.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  final pulumi.Input<String>? member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigquery.DatasetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [DatasetIamMemberState].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [datasetId] The dataset ID.
  /// [etag] (Computed) The etag of the dataset's IAM policy.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  DatasetIamMemberState({
    pulumi.Output<DatasetIamMemberCondition>? condition,
    pulumi.Output<String>? datasetId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<DatasetIamMemberCondition>(condition),
      datasetId = pulumi.Input.asOptionalInput<String>(datasetId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DatasetIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'datasetId': ?datasetId,
      'etag': ?etag,
      'member': ?member,
      'project': ?project,
      'role': ?role,
    };
  }

  factory DatasetIamMemberState.fromMap(Map<String, dynamic> map) {
    return DatasetIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<DatasetIamMemberCondition>(DatasetIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      datasetId: map['datasetId'] == null ? null : pulumi.Output.create<String>(map['datasetId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

