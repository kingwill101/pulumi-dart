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
    required pulumi.Output<String> featurestoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeaturestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreArgs(
      featurestoreId: pulumi.Output.create<String>(map['featurestoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

