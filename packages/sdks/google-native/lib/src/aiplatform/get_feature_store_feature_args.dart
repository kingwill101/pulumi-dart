// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_store_feature_args_doc}
/// Arguments for getFeatureStoreFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_store_feature_args_doc}
class GetFeatureStoreFeatureArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureStoreFeatureArgs].
  /// [entityTypeId] Required.
  /// [featureId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureStoreFeatureArgs({
    required pulumi.Output<String> entityTypeId,
    required pulumi.Output<String> featureId,
    required pulumi.Output<String> featurestoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      featureId = pulumi.Input.asInput<String>(featureId),
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featureId': featureId,
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureStoreFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureStoreFeatureArgs(
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      featureId: pulumi.Output.create<String>(map['featureId'] as String),
      featurestoreId: pulumi.Output.create<String>(map['featurestoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

