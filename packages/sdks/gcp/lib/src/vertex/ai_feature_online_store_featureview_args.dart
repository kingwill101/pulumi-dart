// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_featureview_big_query_source.dart';
import 'ai_feature_online_store_featureview_feature_registry_source.dart';
import 'ai_feature_online_store_featureview_sync_config.dart';
import 'ai_feature_online_store_featureview_vector_search_config.dart';

/// {@template pulumi_vertex_ai_feature_online_store_featureview_ai_feature_online_store_featureview_args_doc}
/// The set of arguments for AiFeatureOnlineStoreFeatureview.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_online_store_featureview_ai_feature_online_store_featureview_args_doc}
class AiFeatureOnlineStoreFeatureviewArgs {
  /// Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreFeatureviewBigQuerySource>? bigQuerySource;
  /// The name of the FeatureOnlineStore to use for the featureview.
  final pulumi.Input<String> featureOnlineStore;
  /// Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>? featureRegistrySource;
  /// A set of key/value label pairs to assign to this FeatureView.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region for the resource. It should be the same as the featureonlinestore region.
  final pulumi.Input<String>? region;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreFeatureviewSyncConfig>? syncConfig;
  /// Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreFeatureviewVectorSearchConfig>? vectorSearchConfig;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewArgs].
  /// [bigQuerySource] Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// [featureOnlineStore] The name of the FeatureOnlineStore to use for the featureview.
  /// [featureRegistrySource] Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// [labels] A set of key/value label pairs to assign to this FeatureView.
  /// [name] Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region for the resource. It should be the same as the featureonlinestore region.
  /// [syncConfig] Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// [vectorSearchConfig] Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  const AiFeatureOnlineStoreFeatureviewArgs({
    this.bigQuerySource,
    required this.featureOnlineStore,
    this.featureRegistrySource,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.syncConfig,
    this.vectorSearchConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreFeatureviewBigQuerySource, Map<String, dynamic>>(bigQuerySource, (value) => value.toMap()),
      'featureOnlineStore': featureOnlineStore,
      'featureRegistrySource': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource, Map<String, dynamic>>(featureRegistrySource, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'syncConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreFeatureviewSyncConfig, Map<String, dynamic>>(syncConfig, (value) => value.toMap()),
      'vectorSearchConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreFeatureviewVectorSearchConfig, Map<String, dynamic>>(vectorSearchConfig, (value) => value.toMap()),
    };
  }

  factory AiFeatureOnlineStoreFeatureviewArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewArgs(
      bigQuerySource: (() { final guardedValue = map['bigQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureOnlineStoreFeatureviewBigQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      featureOnlineStore: pulumi.Input.fromValue(map['featureOnlineStore'] as String),
      featureRegistrySource: (() { final guardedValue = map['featureRegistrySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureOnlineStoreFeatureviewFeatureRegistrySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncConfig: (() { final guardedValue = map['syncConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureOnlineStoreFeatureviewSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vectorSearchConfig: (() { final guardedValue = map['vectorSearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureOnlineStoreFeatureviewVectorSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

