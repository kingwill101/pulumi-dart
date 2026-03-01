// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_view_args_doc}
/// Arguments for getFeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_view_args_doc}
class GetFeatureViewArgs {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> featureViewId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureViewArgs].
  /// [featureOnlineStoreId] Required.
  /// [featureViewId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureViewArgs({
    required pulumi.Output<String> featureOnlineStoreId,
    required pulumi.Output<String> featureViewId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featureOnlineStoreId = pulumi.Input.asInput<String>(featureOnlineStoreId),
      featureViewId = pulumi.Input.asInput<String>(featureViewId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStoreId': featureOnlineStoreId,
      'featureViewId': featureViewId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureViewArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureViewArgs(
      featureOnlineStoreId: pulumi.Output.create<String>(map['featureOnlineStoreId'] as String),
      featureViewId: pulumi.Output.create<String>(map['featureViewId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

