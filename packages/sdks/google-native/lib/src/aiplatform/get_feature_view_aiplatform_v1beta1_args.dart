// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
class GetFeatureViewAiplatformV1beta1Args {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> featureViewId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureViewAiplatformV1beta1Args].
  /// [featureOnlineStoreId] Required.
  /// [featureViewId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureViewAiplatformV1beta1Args({
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

  factory GetFeatureViewAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureViewAiplatformV1beta1Args(
      featureOnlineStoreId: pulumi.Input.fromValue(
        map['featureOnlineStoreId'] as String,
      ),
      featureViewId: pulumi.Input.fromValue(map['featureViewId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
