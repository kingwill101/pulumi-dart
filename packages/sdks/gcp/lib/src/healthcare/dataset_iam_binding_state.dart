// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_iam_binding_condition.dart';

/// Input properties used for looking up and filtering DatasetIamBinding resources.
class DatasetIamBindingState {
  final pulumi.Input<DatasetIamBindingCondition>? condition;
  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String>? datasetId;
  /// (Computed) The etag of the dataset's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The role that should be applied. Only one
  /// `gcp.healthcare.DatasetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [DatasetIamBindingState].
  /// [condition] Optional.
  /// [datasetId] The dataset ID, in the form
  /// [etag] (Computed) The etag of the dataset's IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  DatasetIamBindingState({
    pulumi.Output<DatasetIamBindingCondition>? condition,
    pulumi.Output<String>? datasetId,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<DatasetIamBindingCondition>(condition),
      datasetId = pulumi.Input.asOptionalInput<String>(datasetId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DatasetIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'datasetId': ?datasetId,
      'etag': ?etag,
      'members': ?members,
      'role': ?role,
    };
  }

  factory DatasetIamBindingState.fromMap(Map<String, dynamic> map) {
    return DatasetIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<DatasetIamBindingCondition>(DatasetIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      datasetId: map['datasetId'] == null ? null : pulumi.Output.create<String>(map['datasetId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

