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
  const GetFeatureViewArgs({
    required this.featureOnlineStoreId,
    required this.featureViewId,
    required this.location,
    this.project,
  });

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
      featureOnlineStoreId: pulumi.Input.fromValue(map['featureOnlineStoreId'] as String),
      featureViewId: pulumi.Input.fromValue(map['featureViewId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
