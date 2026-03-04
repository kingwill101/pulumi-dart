// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_group_args_doc}
/// Arguments for getFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_group_args_doc}
class GetFeatureGroupArgs {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupArgs].
  /// [featureGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupArgs({
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

  factory GetFeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupArgs(
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
