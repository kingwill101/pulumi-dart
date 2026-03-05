import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_view_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_sync_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_response.dart';

/// Creates a new FeatureView in a given FeatureOnlineStore.
/// Auto-naming is currently not supported for this resource.
class FeatureViewAiplatformV1beta1 extends pulumi.CustomResource {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeatureViewBigQuerySourceResponse
  >
  bigQuerySource;

  /// Timestamp when this FeatureView was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> featureOnlineStoreId;

  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceResponse
  >
  featureRegistrySource;

  /// Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  late final pulumi.Output<String> featureViewId;

  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  late final pulumi.Output<bool?> runSyncImmediately;

  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse
  >
  syncConfig;

  /// Timestamp when this FeatureView was last updated.
  late final pulumi.Output<String> updateTime;

  /// Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse
  >
  vectorSearchConfig;

  /// Creates a new [FeatureViewAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureViewAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_feature_view_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureViewAiplatformV1beta1(
    String name, {
    FeatureViewAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:FeatureView',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigQuerySource =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeatureViewBigQuerySourceResponse
        >(
          'bigQuerySource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAiplatformV1beta1FeatureViewBigQuerySourceResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    createTime = registerOutput<String>('createTime');
    etag = registerOutput<String>('etag');
    featureOnlineStoreId = registerOutput<String>('featureOnlineStoreId');
    featureRegistrySource =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceResponse
        >(
          'featureRegistrySource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySourceResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    featureViewId = registerOutput<String>('featureViewId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runSyncImmediately = registerOutput<bool?>('runSyncImmediately');
    syncConfig =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse
        >(
          'syncConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAiplatformV1beta1FeatureViewSyncConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    updateTime = registerOutput<String>('updateTime');
    vectorSearchConfig =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse
        >(
          'vectorSearchConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
