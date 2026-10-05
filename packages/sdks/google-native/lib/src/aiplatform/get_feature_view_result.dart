// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_feature_view_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source_response.dart';
import 'google_cloud_aiplatform_v1_feature_view_sync_config_response.dart';

/// Result data returned by getFeatureView.
class GetFeatureViewResult {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  final GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse? bigQuerySource;
  /// Timestamp when this FeatureView was created.
  final String? createTime;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  final GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse? featureRegistrySource;
  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String>? labels;
  /// Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  final String? name;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  final GoogleCloudAiplatformV1FeatureViewSyncConfigResponse? syncConfig;
  /// Timestamp when this FeatureView was last updated.
  final String? updateTime;

  /// Creates a new [GetFeatureViewResult].
  /// [bigQuerySource] Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// [createTime] Timestamp when this FeatureView was created.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureRegistrySource] Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  /// [syncConfig] Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// [updateTime] Timestamp when this FeatureView was last updated.
  const GetFeatureViewResult({
    this.bigQuerySource,
    this.createTime,
    this.etag,
    this.featureRegistrySource,
    this.labels,
    this.name,
    this.syncConfig,
    this.updateTime,
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
    };
  }

  factory GetFeatureViewResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureViewResult(
      bigQuerySource: (() { final guardedValue = map['bigQuerySource']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      featureRegistrySource: (() { final guardedValue = map['featureRegistrySource']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncConfig: (() { final guardedValue = map['syncConfig']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1FeatureViewSyncConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
