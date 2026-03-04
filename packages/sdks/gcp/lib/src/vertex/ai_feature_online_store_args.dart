// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_bigtable.dart';
import 'ai_feature_online_store_dedicated_serving_endpoint.dart';
import 'ai_feature_online_store_embedding_management.dart';
import 'ai_feature_online_store_encryption_spec.dart';

/// {@template pulumi_vertex_ai_feature_online_store_ai_feature_online_store_args_doc}
/// The set of arguments for AiFeatureOnlineStore.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_online_store_ai_feature_online_store_args_doc}
class AiFeatureOnlineStoreArgs {
  /// Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreBigtable>? bigtable;

  /// The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreDedicatedServingEndpoint>?
  dedicatedServingEndpoint;

  /// The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `embedding_management` is deprecated. This field is no longer needed anymore and embedding management is automatically enabled when specifying Optimized storage type
  final pulumi.Input<AiFeatureOnlineStoreEmbeddingManagement>?
  embeddingManagement;

  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureOnlineStoreEncryptionSpec>? encryptionSpec;

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

  /// The region of feature online store. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiFeatureOnlineStoreArgs].
  /// [bigtable] Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// [dedicatedServingEndpoint] The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// [embeddingManagement] The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// [encryptionSpec] If set, both of the online and offline data storage will be secured by this key.
  /// [forceDestroy] If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  /// [labels] The labels with user-defined metadata to organize your feature online stores.
  /// [name] The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [optimized] Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of feature online store. eg us-central1
  AiFeatureOnlineStoreArgs({
    this.bigtable,
    this.dedicatedServingEndpoint,
    this.embeddingManagement,
    this.encryptionSpec,
    this.forceDestroy,
    this.labels,
    this.name,
    this.optimized,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigtable':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureOnlineStoreBigtable,
            Map<String, dynamic>
          >(bigtable, (value) => value.toMap()),
      'dedicatedServingEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureOnlineStoreDedicatedServingEndpoint,
            Map<String, dynamic>
          >(dedicatedServingEndpoint, (value) => value.toMap()),
      'embeddingManagement':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureOnlineStoreEmbeddingManagement,
            Map<String, dynamic>
          >(embeddingManagement, (value) => value.toMap()),
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureOnlineStoreEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'labels': ?labels,
      'name': ?name,
      'optimized': ?optimized,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiFeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreArgs(
      bigtable: (() {
        final guardedValue = map['bigtable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureOnlineStoreBigtable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dedicatedServingEndpoint: (() {
        final guardedValue = map['dedicatedServingEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureOnlineStoreDedicatedServingEndpoint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      embeddingManagement: (() {
        final guardedValue = map['embeddingManagement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureOnlineStoreEmbeddingManagement.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureOnlineStoreEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optimized: (() {
        final guardedValue = map['optimized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
