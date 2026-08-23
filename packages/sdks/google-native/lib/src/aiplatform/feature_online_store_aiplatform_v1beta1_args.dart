// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_dedicated_serving_endpoint.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_embedding_management.dart';

/// {@template pulumi_aiplatform_v1beta1_feature_online_store_aiplatform_v1beta1_args_doc}
/// The set of arguments for FeatureOnlineStore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_feature_online_store_aiplatform_v1beta1_args_doc}
class FeatureOnlineStoreAiplatformV1beta1Args {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>? bigtable;
  /// Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>? dedicatedServingEndpoint;
  /// Optional. The settings for embedding management in FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>? embeddingManagement;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for this FeatureOnlineStore, which will become the final component of the FeatureOnlineStore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featureOnlineStoreId;
  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  final pulumi.Input<Map<String, dynamic>>? optimized;
  final pulumi.Input<String>? project;

  /// Creates a new [FeatureOnlineStoreAiplatformV1beta1Args].
  /// [bigtable] Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// [dedicatedServingEndpoint] Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  /// [embeddingManagement] Optional. The settings for embedding management in FeatureOnlineStore.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureOnlineStoreId] Required. The ID to use for this FeatureOnlineStore, which will become the final component of the FeatureOnlineStore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [optimized] Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  /// [project] Optional.
  const FeatureOnlineStoreAiplatformV1beta1Args({
    this.bigtable,
    this.dedicatedServingEndpoint,
    this.embeddingManagement,
    this.etag,
    required this.featureOnlineStoreId,
    this.labels,
    this.location,
    this.optimized,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigtable': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable, Map<String, dynamic>>(bigtable, (value) => value.toMap()),
      'dedicatedServingEndpoint': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint, Map<String, dynamic>>(dedicatedServingEndpoint, (value) => value.toMap()),
      'embeddingManagement': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement, Map<String, dynamic>>(embeddingManagement, (value) => value.toMap()),
      'etag': ?etag,
      'featureOnlineStoreId': featureOnlineStoreId,
      'labels': ?labels,
      'location': ?location,
      'optimized': ?optimized,
      'project': ?project,
    };
  }

  factory FeatureOnlineStoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeatureOnlineStoreAiplatformV1beta1Args(
      bigtable: (() { final guardedValue = map['bigtable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedServingEndpoint: (() { final guardedValue = map['dedicatedServingEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      embeddingManagement: (() { final guardedValue = map['embeddingManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureOnlineStoreId: pulumi.Input.fromValue(map['featureOnlineStoreId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimized: (() { final guardedValue = map['optimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
