import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_online_store_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_dedicated_serving_endpoint_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_embedding_management_response.dart';

/// Creates a new FeatureOnlineStore in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FeatureOnlineStoreAiplatformV1beta1 extends pulumi.CustomResource {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse> bigtable;
  /// Timestamp when this FeatureOnlineStore was created.
  late final pulumi.Output<String> createTime;
  /// Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse> dedicatedServingEndpoint;
  /// Optional. The settings for embedding management in FeatureOnlineStore.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse> embeddingManagement;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  /// Required. The ID to use for this FeatureOnlineStore, which will become the final component of the FeatureOnlineStore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  late final pulumi.Output<String> featureOnlineStoreId;
  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Name of the FeatureOnlineStore. Format: `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
  late final pulumi.Output<String> name;
  /// Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  late final pulumi.Output<Map<String, dynamic>> optimized;
  late final pulumi.Output<String> project;
  /// State of the featureOnlineStore.
  late final pulumi.Output<String> state;
  /// Timestamp when this FeatureOnlineStore was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FeatureOnlineStoreAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureOnlineStoreAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_feature_online_store_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureOnlineStoreAiplatformV1beta1(
    String name, {
    FeatureOnlineStoreAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:FeatureOnlineStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigtable = registerOutput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse>('bigtable', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dedicatedServingEndpoint = registerOutput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse>('dedicatedServingEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    embeddingManagement = registerOutput<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse>('embeddingManagement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    featureOnlineStoreId = registerOutput<String>('featureOnlineStoreId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimized = registerOutput<Map<String, dynamic>>('optimized');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
