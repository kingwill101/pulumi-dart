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

  factory GetFeatureStoreFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureStoreFeatureArgs(
      entityTypeId: (map['entityTypeId'] as String).input(),
      featureId: (map['featureId'] as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

