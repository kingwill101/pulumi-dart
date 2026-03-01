// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_featureview_iam_binding_condition.dart';

/// Input properties used for looking up and filtering AiFeatureOnlineStoreFeatureviewIamBinding resources.
class AiFeatureOnlineStoreFeatureviewIamBindingState {
  final pulumi.Input<AiFeatureOnlineStoreFeatureviewIamBindingCondition>? condition;
  /// (Computed) The etag of the IAM policy.
  final pulumi.Input<String>? etag;
  /// The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? featureOnlineStore;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? featureView;
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiFeatureOnlineStoreFeatureviewIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewIamBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the IAM policy.
  /// [featureOnlineStore] The name of the FeatureOnlineStore to use for the featureview. Used to find the parent resource to bind the IAM policy to
  /// [featureView] Used to find the parent resource to bind the IAM policy to
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region for the resource. It should be the same as the featureonlinestore region. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [role] The role that should be applied. Only one
  AiFeatureOnlineStoreFeatureviewIamBindingState({
    pulumi.Output<AiFeatureOnlineStoreFeatureviewIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? featureOnlineStore,
    pulumi.Output<String>? featureView,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featureOnlineStore = pulumi.Input.asOptionalInput<String>(featureOnlineStore),
      featureView = pulumi.Input.asOptionalInput<String>(featureView),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreFeatureviewIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'featureOnlineStore': ?featureOnlineStore,
      'featureView': ?featureView,
      'members': ?members,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewIamBindingState.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreFeatureviewIamBindingCondition>(AiFeatureOnlineStoreFeatureviewIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      featureOnlineStore: map['featureOnlineStore'] == null ? null : pulumi.Output.create<String>(map['featureOnlineStore'] as String),
      featureView: map['featureView'] == null ? null : pulumi.Output.create<String>(map['featureView'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

