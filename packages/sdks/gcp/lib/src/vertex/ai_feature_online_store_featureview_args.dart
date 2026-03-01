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
  AiFeatureOnlineStoreFeatureviewArgs({
    pulumi.Output<AiFeatureOnlineStoreFeatureviewBigQuerySource>? bigQuerySource,
    required pulumi.Output<String> featureOnlineStore,
    pulumi.Output<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>? featureRegistrySource,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<AiFeatureOnlineStoreFeatureviewSyncConfig>? syncConfig,
    pulumi.Output<AiFeatureOnlineStoreFeatureviewVectorSearchConfig>? vectorSearchConfig,
  }) :
      bigQuerySource = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewBigQuerySource>(bigQuerySource),
      featureOnlineStore = pulumi.Input.asInput<String>(featureOnlineStore),
      featureRegistrySource = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>(featureRegistrySource),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      syncConfig = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewSyncConfig>(syncConfig),
      vectorSearchConfig = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewVectorSearchConfig>(vectorSearchConfig);

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
      bigQuerySource: map['bigQuerySource'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreFeatureviewBigQuerySource>(AiFeatureOnlineStoreFeatureviewBigQuerySource.fromMap((map['bigQuerySource'] as Map).cast<String, dynamic>())),
      featureOnlineStore: pulumi.Output.create<String>(map['featureOnlineStore'] as String),
      featureRegistrySource: map['featureRegistrySource'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>(AiFeatureOnlineStoreFeatureviewFeatureRegistrySource.fromMap((map['featureRegistrySource'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      syncConfig: map['syncConfig'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreFeatureviewSyncConfig>(AiFeatureOnlineStoreFeatureviewSyncConfig.fromMap((map['syncConfig'] as Map).cast<String, dynamic>())),
      vectorSearchConfig: map['vectorSearchConfig'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreFeatureviewVectorSearchConfig>(AiFeatureOnlineStoreFeatureviewVectorSearchConfig.fromMap((map['vectorSearchConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

