// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_bigtable.dart';
import 'ai_feature_online_store_dedicated_serving_endpoint.dart';
import 'ai_feature_online_store_embedding_management.dart';
import 'ai_feature_online_store_encryption_spec.dart';

/// Input properties used for looking up and filtering AiFeatureOnlineStore resources.
class AiFeatureOnlineStoreState {
  /// Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreBigtable>? bigtable;
  /// The timestamp of when the feature online store was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreDedicatedServingEndpoint>? dedicatedServingEndpoint;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// Structure is documented below.
  ///
  /// > **Warning:** `embedding_management` is deprecated. This field is no longer needed anymore and embedding management is automatically enabled when specifying Optimized storage type
  final pulumi.Input<AiFeatureOnlineStoreEmbeddingManagement>? embeddingManagement;
  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreEncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;
  /// If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  final pulumi.Input<bool>? forceDestroy;
  /// The labels with user-defined metadata to organize your feature online stores.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  final pulumi.Input<Map<String, dynamic>>? optimized;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of feature online store. eg us-central1
  final pulumi.Input<String>? region;
  /// The state of the Feature Online Store. See the possible states in [this link](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores#state).
  final pulumi.Input<String>? state;
  /// The timestamp of when the feature online store was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiFeatureOnlineStoreState].
  /// [bigtable] Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// [createTime] The timestamp of when the feature online store was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [dedicatedServingEndpoint] The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [embeddingManagement] The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// [encryptionSpec] If set, both of the online and offline data storage will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [forceDestroy] If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  /// [labels] The labels with user-defined metadata to organize your feature online stores.
  /// [name] The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [optimized] Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of feature online store. eg us-central1
  /// [state] The state of the Feature Online Store. See the possible states in [this link](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores#state).
  /// [updateTime] The timestamp of when the feature online store was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiFeatureOnlineStoreState({
    this.bigtable,
    this.createTime,
    this.dedicatedServingEndpoint,
    this.effectiveLabels,
    this.embeddingManagement,
    this.encryptionSpec,
    this.etag,
    this.forceDestroy,
    this.labels,
    this.name,
    this.optimized,
    this.project,
    this.pulumiLabels,
    this.region,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigtable': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreBigtable, Map<String, dynamic>>(bigtable, (value) => value.toMap()),
      'createTime': ?createTime,
      'dedicatedServingEndpoint': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreDedicatedServingEndpoint, Map<String, dynamic>>(dedicatedServingEndpoint, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'embeddingManagement': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreEmbeddingManagement, Map<String, dynamic>>(embeddingManagement, (value) => value.toMap()),
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiFeatureOnlineStoreEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'forceDestroy': ?forceDestroy,
      'labels': ?labels,
      'name': ?name,
      'optimized': ?optimized,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AiFeatureOnlineStoreState.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreState(
      bigtable: map['bigtable'] == null ? null : (AiFeatureOnlineStoreBigtable.fromMap((map['bigtable']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dedicatedServingEndpoint: map['dedicatedServingEndpoint'] == null ? null : (AiFeatureOnlineStoreDedicatedServingEndpoint.fromMap((map['dedicatedServingEndpoint']! as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      embeddingManagement: map['embeddingManagement'] == null ? null : (AiFeatureOnlineStoreEmbeddingManagement.fromMap((map['embeddingManagement']! as Map).cast<String, dynamic>())).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (AiFeatureOnlineStoreEncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      optimized: map['optimized'] == null ? null : ((map['optimized']! as Map).cast<String, dynamic>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

