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
    required pulumi.Output<String> featureOnlineStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featureOnlineStoreId = pulumi.Input.asInput<String>(featureOnlineStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureOnlineStoreId': featureOnlineStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureOnlineStoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreAiplatformV1beta1Args(
      featureOnlineStoreId: pulumi.Output.create<String>(map['featureOnlineStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

