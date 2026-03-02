// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_feature_gkehub_v1beta_args_doc}
/// Arguments for getFeature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_feature_gkehub_v1beta_args_doc}
class GetFeatureGkehubV1betaArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGkehubV1betaArgs].
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGkehubV1betaArgs({
    required this.featureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureId': featureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGkehubV1betaArgs(
      featureId: (map['featureId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

