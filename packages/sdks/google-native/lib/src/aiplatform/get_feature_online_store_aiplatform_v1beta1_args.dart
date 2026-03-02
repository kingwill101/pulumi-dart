// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_online_store_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureOnlineStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_online_store_aiplatform_v1beta1_args_doc}
class GetFeatureOnlineStoreAiplatformV1beta1Args {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureOnlineStoreAiplatformV1beta1Args].
  /// [featureOnlineStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureOnlineStoreAiplatformV1beta1Args({
    required this.featureOnlineStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStoreId': featureOnlineStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureOnlineStoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreAiplatformV1beta1Args(
      featureOnlineStoreId: (map['featureOnlineStoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

