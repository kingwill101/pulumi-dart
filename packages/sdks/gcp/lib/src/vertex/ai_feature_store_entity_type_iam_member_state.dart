// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_iam_member_condition.dart';

/// Input properties used for looking up and filtering AiFeatureStoreEntityTypeIamMember resources.
class AiFeatureStoreEntityTypeIamMemberState {
  final pulumi.Input<AiFeatureStoreEntityTypeIamMemberCondition?>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String?>? entitytype;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String?>? etag;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String?>? featurestore;
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
  final pulumi.Input<String?>? member;
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String?>? role;

  /// Creates a new [AiFeatureStoreEntityTypeIamMemberState].
  /// [condition] Optional.
  /// [entitytype] Used to find the parent resource to bind the IAM policy to
  /// [etag] (Computed) The etag of the IAM policy.
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  /// [member] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  const AiFeatureStoreEntityTypeIamMemberState({
    this.condition,
    this.entitytype,
    this.etag,
    this.featurestore,
    this.member,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'entitytype': ?entitytype,
      'etag': ?etag,
      'featurestore': ?featurestore,
      'member': ?member,
      'role': ?role,
    };
  }

  factory AiFeatureStoreEntityTypeIamMemberState.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeIamMemberState(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entitytype: (() { final guardedValue = map['entitytype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featurestore: (() { final guardedValue = map['featurestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
