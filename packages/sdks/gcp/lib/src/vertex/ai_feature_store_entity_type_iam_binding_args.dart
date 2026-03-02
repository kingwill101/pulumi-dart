// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_iam_binding_condition.dart';

/// {@template pulumi_vertex_ai_feature_store_entity_type_iam_binding_ai_feature_store_entity_type_iam_binding_args_doc}
/// The set of arguments for AiFeatureStoreEntityTypeIamBinding.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_entity_type_iam_binding_ai_feature_store_entity_type_iam_binding_args_doc}
class AiFeatureStoreEntityTypeIamBindingArgs {
  final pulumi.Input<AiFeatureStoreEntityTypeIamBindingCondition>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> entitytype;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> featurestore;
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
  final pulumi.Input<List<String>> members;
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [AiFeatureStoreEntityTypeIamBindingArgs].
  /// [condition] Optional.
  /// [entitytype] Used to find the parent resource to bind the IAM policy to
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  AiFeatureStoreEntityTypeIamBindingArgs({
    this.condition,
    required this.entitytype,
    required this.featurestore,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'entitytype': entitytype,
      'featurestore': featurestore,
      'members': members,
      'role': role,
    };
  }

  factory AiFeatureStoreEntityTypeIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeIamBindingArgs(
      condition: map['condition'] == null ? null : (AiFeatureStoreEntityTypeIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      entitytype: (map['entitytype'] as String).input(),
      featurestore: (map['featurestore'] as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      role: (map['role'] as String).input(),
    );
  }
}

