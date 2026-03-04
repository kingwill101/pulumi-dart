// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
class GetFeatureGroupAiplatformV1beta1Args {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupAiplatformV1beta1Args].
  /// [featureGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupAiplatformV1beta1Args({
    required this.featureGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGroupAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureGroupAiplatformV1beta1Args(
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
