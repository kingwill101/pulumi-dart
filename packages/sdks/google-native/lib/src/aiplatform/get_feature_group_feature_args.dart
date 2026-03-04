// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
/// Arguments for getFeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
class GetFeatureGroupFeatureArgs {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupFeatureArgs].
  /// [featureGroupId] Required.
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupFeatureArgs({
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

  factory GetFeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupFeatureArgs(
      featureGroupId: pulumi.Input.fromValue(map['featureGroupId'] as String),
      featureId: pulumi.Input.fromValue(map['featureId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
