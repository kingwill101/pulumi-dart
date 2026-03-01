import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_args.dart';
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_response.dart';

/// Creates a new EntityType in a given Featurestore.
class EntityType extends pulumi.CustomResource {
  /// Timestamp when this EntityType was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Description of the EntityType.
  late final pulumi.Output<String> description;
  /// Required. The ID to use for the EntityType, which will become the final component of the EntityType's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a featurestore.
  late final pulumi.Output<String> entityTypeId;
  /// Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  late final pulumi.Output<GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse> monitoringConfig;
  /// Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  late final pulumi.Output<String> name;
  /// Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  late final pulumi.Output<int> offlineStorageTtlDays;
  late final pulumi.Output<String> project;
  /// Timestamp when this EntityType was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EntityType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityType]. {@macro pulumi_aiplatform_v1_entity_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityType(
    String name, {
    EntityTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:EntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.entityTypeId = registerOutput<String>('entityTypeId');
    this.etag = registerOutput<String>('etag');
    this.featurestoreId = registerOutput<String>('featurestoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.monitoringConfig = registerOutput<GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse>('monitoringConfig');
    this.name = registerOutput<String>('name');
    this.offlineStorageTtlDays = registerOutput<int>('offlineStorageTtlDays');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
