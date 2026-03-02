// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_view_big_query_source.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_sync_config.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config.dart';

/// {@template pulumi_aiplatform_v1beta1_feature_view_aiplatform_v1beta1_args_doc}
/// The set of arguments for FeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_feature_view_aiplatform_v1beta1_args_doc}
class FeatureViewAiplatformV1beta1Args {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource>? bigQuerySource;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featureOnlineStoreId;
  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource>? featureRegistrySource;
  /// Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  final pulumi.Input<String> featureViewId;
  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  final pulumi.Input<bool>? runSyncImmediately;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewSyncConfig>? syncConfig;
  /// Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig>? vectorSearchConfig;

  /// Creates a new [FeatureViewAiplatformV1beta1Args].
  /// [bigQuerySource] Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureOnlineStoreId] Required.
  /// [featureRegistrySource] Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// [featureViewId] Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  /// [runSyncImmediately] Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  /// [syncConfig] Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// [vectorSearchConfig] Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  FeatureViewAiplatformV1beta1Args({
    this.bigQuerySource,
    this.etag,
    required this.featureOnlineStoreId,
    this.featureRegistrySource,
    required this.featureViewId,
    this.labels,
    this.location,
    this.project,
    this.runSyncImmediately,
    this.syncConfig,
    this.vectorSearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource, Map<String, dynamic>>(bigQuerySource, (value) => value.toMap()),
      'etag': ?etag,
      'featureOnlineStoreId': featureOnlineStoreId,
      'featureRegistrySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource, Map<String, dynamic>>(featureRegistrySource, (value) => value.toMap()),
      'featureViewId': featureViewId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'runSyncImmediately': ?runSyncImmediately,
      'syncConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewSyncConfig, Map<String, dynamic>>(syncConfig, (value) => value.toMap()),
      'vectorSearchConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig, Map<String, dynamic>>(vectorSearchConfig, (value) => value.toMap()),
    };
  }

  factory FeatureViewAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeatureViewAiplatformV1beta1Args(
      bigQuerySource: map['bigQuerySource'] == null ? null : (GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource.fromMap((map['bigQuerySource']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      featureOnlineStoreId: (map['featureOnlineStoreId'] as String).input(),
      featureRegistrySource: map['featureRegistrySource'] == null ? null : (GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource.fromMap((map['featureRegistrySource']! as Map).cast<String, dynamic>())).input(),
      featureViewId: (map['featureViewId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runSyncImmediately: map['runSyncImmediately'] == null ? null : (map['runSyncImmediately']! as bool).input(),
      syncConfig: map['syncConfig'] == null ? null : (GoogleCloudAiplatformV1beta1FeatureViewSyncConfig.fromMap((map['syncConfig']! as Map).cast<String, dynamic>())).input(),
      vectorSearchConfig: map['vectorSearchConfig'] == null ? null : (GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig.fromMap((map['vectorSearchConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

