// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
class GetFeatureGroupFeatureAiplatformV1beta1Args {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupFeatureAiplatformV1beta1Args].
  /// [featureGroupId] Required.
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupFeatureAiplatformV1beta1Args({
    required this.featureGroupId,
    required this.featureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'featureId': featureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGroupFeatureAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupFeatureAiplatformV1beta1Args(
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      featureId: pulumi.Input.fromValue(map['featureId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

