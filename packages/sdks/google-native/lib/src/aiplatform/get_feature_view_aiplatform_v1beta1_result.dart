// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_view_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_sync_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_response.dart';

/// Result data returned by getFeatureView.
class GetFeatureViewAiplatformV1beta1Result {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureViewBigQuerySourceResponse? bigQuerySource;
  /// Timestamp when this FeatureView was created.
  final String? createTime;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceResponse? featureRegistrySource;
  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String>? labels;
  /// Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  final String? name;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  final GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse? syncConfig;
  /// Timestamp when this FeatureView was last updated.
  final String? updateTime;
  /// Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  final GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse? vectorSearchConfig;

  /// Creates a new [GetFeatureViewAiplatformV1beta1Result].
  /// [bigQuerySource] Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// [createTime] Timestamp when this FeatureView was created.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureRegistrySource] Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  /// [syncConfig] Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// [updateTime] Timestamp when this FeatureView was last updated.
  /// [vectorSearchConfig] Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  const GetFeatureViewAiplatformV1beta1Result({
    this.bigQuerySource,
    this.createTime,
    this.etag,
    this.featureRegistrySource,
    this.labels,
    this.name,
    this.syncConfig,
    this.updateTime,
    this.vectorSearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': ?bigQuerySource?.toMap(),
      'createTime': ?createTime,
      'etag': ?etag,
      'featureRegistrySource': ?featureRegistrySource?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'syncConfig': ?syncConfig?.toMap(),
      'updateTime': ?updateTime,
      'vectorSearchConfig': ?vectorSearchConfig?.toMap(),
    };
  }

  factory GetFeatureViewAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFeatureViewAiplatformV1beta1Result(
      bigQuerySource: (() { final guardedValue = map['bigQuerySource']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureViewBigQuerySourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      featureRegistrySource: (() { final guardedValue = map['featureRegistrySource']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncConfig: (() { final guardedValue = map['syncConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vectorSearchConfig: (() { final guardedValue = map['vectorSearchConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
