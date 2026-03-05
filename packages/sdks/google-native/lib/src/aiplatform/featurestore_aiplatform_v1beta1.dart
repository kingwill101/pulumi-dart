import 'package:pulumi/pulumi.dart' as pulumi;
import 'featurestore_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_online_serving_config_response.dart';

/// Creates a new Featurestore in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FeaturestoreAiplatformV1beta1 extends pulumi.CustomResource {
  /// Timestamp when this Featurestore was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse> encryptionSpec;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  /// Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  late final pulumi.Output<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Name of the Featurestore. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}`
  late final pulumi.Output<String> name;
  /// Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigResponse> onlineServingConfig;
  /// Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  late final pulumi.Output<int> onlineStorageTtlDays;
  late final pulumi.Output<String> project;
  /// State of the featurestore.
  late final pulumi.Output<String> state;
  /// Timestamp when this Featurestore was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FeaturestoreAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeaturestoreAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_featurestore_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeaturestoreAiplatformV1beta1(
    String name, {
    FeaturestoreAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Featurestore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    encryptionSpec = registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    featurestoreId = registerOutput<String>('featurestoreId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    onlineServingConfig = registerOutput<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigResponse>('onlineServingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onlineStorageTtlDays = registerOutput<int>('onlineStorageTtlDays');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
