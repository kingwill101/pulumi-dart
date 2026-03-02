// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_store_feature_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureStoreFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_store_feature_aiplatform_v1beta1_args_doc}
class GetFeatureStoreFeatureAiplatformV1beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureStoreFeatureAiplatformV1beta1Args].
  /// [entityTypeId] Required.
  /// [featureId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureStoreFeatureAiplatformV1beta1Args({
    required this.entityTypeId,
    required this.featureId,
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featureId': featureId,
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureStoreFeatureAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeatureStoreFeatureAiplatformV1beta1Args(
      entityTypeId: (map['entityTypeId'] as String).input(),
      featureId: (map['featureId'] as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

