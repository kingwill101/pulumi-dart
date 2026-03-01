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
    pulumi.Output<AiFeatureOnlineStoreBigtable>? bigtable,
    pulumi.Output<String>? createTime,
    pulumi.Output<AiFeatureOnlineStoreDedicatedServingEndpoint>? dedicatedServingEndpoint,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<AiFeatureOnlineStoreEmbeddingManagement>? embeddingManagement,
    pulumi.Output<AiFeatureOnlineStoreEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, dynamic>>? optimized,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      bigtable = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreBigtable>(bigtable),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dedicatedServingEndpoint = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreDedicatedServingEndpoint>(dedicatedServingEndpoint),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      embeddingManagement = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreEmbeddingManagement>(embeddingManagement),
      encryptionSpec = pulumi.Input.asOptionalInput<AiFeatureOnlineStoreEncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimized = pulumi.Input.asOptionalInput<Map<String, dynamic>>(optimized),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      bigtable: map['bigtable'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreBigtable>(AiFeatureOnlineStoreBigtable.fromMap((map['bigtable'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dedicatedServingEndpoint: map['dedicatedServingEndpoint'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreDedicatedServingEndpoint>(AiFeatureOnlineStoreDedicatedServingEndpoint.fromMap((map['dedicatedServingEndpoint'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      embeddingManagement: map['embeddingManagement'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreEmbeddingManagement>(AiFeatureOnlineStoreEmbeddingManagement.fromMap((map['embeddingManagement'] as Map).cast<String, dynamic>())),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiFeatureOnlineStoreEncryptionSpec>(AiFeatureOnlineStoreEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optimized: map['optimized'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['optimized'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

