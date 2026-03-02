// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_args_doc}
/// Arguments for getFeaturestore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_args_doc}
class GetFeaturestoreArgs {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreArgs].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeaturestoreArgs({
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeaturestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreArgs(
      featurestoreId: (map['featurestoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

