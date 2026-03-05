import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_response.dart';

/// Creates a new Feature in a given FeatureGroup.
/// Auto-naming is currently not supported for this resource.
class FeatureGroupFeatureAiplatformV1beta1 extends pulumi.CustomResource {
  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  late final pulumi.Output<String> createTime;
  /// Description of the Feature.
  late final pulumi.Output<String> description;
  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  late final pulumi.Output<bool> disableMonitoring;
  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> featureGroupId;
  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  late final pulumi.Output<String> featureId;
  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse> monitoringConfig;
  /// Only applicable for Vertex AI Feature Store (Legacy). A list of historical SnapshotAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
  late final pulumi.Output<List<Map<String, dynamic>>> monitoringStats;
  /// Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  late final pulumi.Output<List<Map<String, dynamic>>> monitoringStatsAnomalies;
  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  late final pulumi.Output<String> updateTime;
  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  late final pulumi.Output<String> valueType;
  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  late final pulumi.Output<String> versionColumnName;

  /// Creates a new [FeatureGroupFeatureAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureGroupFeatureAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_feature_group_feature_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureGroupFeatureAiplatformV1beta1(
    String name, {
    FeatureGroupFeatureAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:FeatureGroupFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    disableMonitoring = registerOutput<bool>('disableMonitoring');
    etag = registerOutput<String>('etag');
    featureGroupId = registerOutput<String>('featureGroupId');
    featureId = registerOutput<String>('featureId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    monitoringConfig = registerOutput<GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringStats = registerOutput<List<Map<String, dynamic>>>('monitoringStats');
    monitoringStatsAnomalies = registerOutput<List<Map<String, dynamic>>>('monitoringStatsAnomalies');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    valueType = registerOutput<String>('valueType');
    versionColumnName = registerOutput<String>('versionColumnName');
  }
}
