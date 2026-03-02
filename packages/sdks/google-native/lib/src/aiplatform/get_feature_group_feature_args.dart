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
      featureGroupId: (map['featureGroupId'] as String).input(),
      featureId: (map['featureId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

