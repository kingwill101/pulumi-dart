// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_dedicated_serving_endpoint_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_embedding_management_response.dart';

/// Result data returned by getFeatureOnlineStore.
class GetFeatureOnlineStoreAiplatformV1beta1Result {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse? bigtable;
  /// Timestamp when this FeatureOnlineStore was created.
  final String? createTime;
  /// Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse? dedicatedServingEndpoint;
  /// Optional. The settings for embedding management in FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse? embeddingManagement;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String>? labels;
  /// Name of the FeatureOnlineStore. Format: `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
  final String? name;
  /// Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  final Map<String, dynamic>? optimized;
  /// State of the featureOnlineStore.
  final String? state;
  /// Timestamp when this FeatureOnlineStore was last updated.
  final String? updateTime;

  /// Creates a new [GetFeatureOnlineStoreAiplatformV1beta1Result].
  /// [bigtable] Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// [createTime] Timestamp when this FeatureOnlineStore was created.
  /// [dedicatedServingEndpoint] Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  /// [embeddingManagement] Optional. The settings for embedding management in FeatureOnlineStore.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the FeatureOnlineStore. Format: `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
  /// [optimized] Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  /// [state] State of the featureOnlineStore.
  /// [updateTime] Timestamp when this FeatureOnlineStore was last updated.
  const GetFeatureOnlineStoreAiplatformV1beta1Result({
    this.bigtable,
    this.createTime,
    this.dedicatedServingEndpoint,
    this.embeddingManagement,
    this.etag,
    this.labels,
    this.name,
    this.optimized,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigtable': ?bigtable?.toMap(),
      'createTime': ?createTime,
      'dedicatedServingEndpoint': ?dedicatedServingEndpoint?.toMap(),
      'embeddingManagement': ?embeddingManagement?.toMap(),
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'optimized': ?optimized,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreAiplatformV1beta1Result(
      bigtable: (() { final guardedValue = map['bigtable']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedServingEndpoint: (() { final guardedValue = map['dedicatedServingEndpoint']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      embeddingManagement: (() { final guardedValue = map['embeddingManagement']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optimized: (() { final guardedValue = map['optimized']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
