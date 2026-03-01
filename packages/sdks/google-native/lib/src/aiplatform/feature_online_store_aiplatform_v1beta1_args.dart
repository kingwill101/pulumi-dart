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
  FeatureOnlineStoreAiplatformV1beta1Args({
    pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>? bigtable,
    pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>? dedicatedServingEndpoint,
    pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>? embeddingManagement,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> featureOnlineStoreId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, dynamic>>? optimized,
    pulumi.Output<String>? project,
  }) :
      bigtable = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>(bigtable),
      dedicatedServingEndpoint = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>(dedicatedServingEndpoint),
      embeddingManagement = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>(embeddingManagement),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featureOnlineStoreId = pulumi.Input.asInput<String>(featureOnlineStoreId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      optimized = pulumi.Input.asOptionalInput<Map<String, dynamic>>(optimized),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      bigtable: map['bigtable'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>(GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable.fromMap((map['bigtable'] as Map).cast<String, dynamic>())),
      dedicatedServingEndpoint: map['dedicatedServingEndpoint'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>(GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint.fromMap((map['dedicatedServingEndpoint'] as Map).cast<String, dynamic>())),
      embeddingManagement: map['embeddingManagement'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>(GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement.fromMap((map['embeddingManagement'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      featureOnlineStoreId: pulumi.Output.create<String>(map['featureOnlineStoreId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      optimized: map['optimized'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['optimized'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

