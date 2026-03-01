// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_store_iam_binding_condition.dart';

/// Input properties used for looking up and filtering ConsentStoreIamBinding resources.
class ConsentStoreIamBindingState {
  final pulumi.Input<ConsentStoreIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? consentStoreId;
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? dataset;
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
  /// The role that should be applied. Only one
  /// `gcp.healthcare.ConsentStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [ConsentStoreIamBindingState].
  /// [condition] Optional.
  /// [consentStoreId] Used to find the parent resource to bind the IAM policy to
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [etag] (Computed) The etag of the IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  ConsentStoreIamBindingState({
    pulumi.Output<ConsentStoreIamBindingCondition>? condition,
    pulumi.Output<String>? consentStoreId,
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<ConsentStoreIamBindingCondition>(condition),
      consentStoreId = pulumi.Input.asOptionalInput<String>(consentStoreId),
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<ConsentStoreIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'consentStoreId': ?consentStoreId,
      'dataset': ?dataset,
      'etag': ?etag,
      'members': ?members,
      'role': ?role,
    };
  }

  factory ConsentStoreIamBindingState.fromMap(Map<String, dynamic> map) {
    return ConsentStoreIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<ConsentStoreIamBindingCondition>(ConsentStoreIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      consentStoreId: map['consentStoreId'] == null ? null : pulumi.Output.create<String>(map['consentStoreId'] as String),
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

