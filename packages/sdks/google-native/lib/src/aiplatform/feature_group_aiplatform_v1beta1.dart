import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_feature_group_big_query_response.dart';

/// Creates a new FeatureGroup in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FeatureGroupAiplatformV1beta1 extends pulumi.CustomResource {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse
  >
  bigQuery;

  /// Timestamp when this FeatureGroup was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the FeatureGroup.
  late final pulumi.Output<String> description;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;

  /// Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  late final pulumi.Output<String> featureGroupId;

  /// Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the FeatureGroup. Format: `projects/{project}/locations/{location}/featureGroups/{featureGroup}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Timestamp when this FeatureGroup was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FeatureGroupAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureGroupAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_feature_group_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureGroupAiplatformV1beta1(
    String name, {
    FeatureGroupAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:FeatureGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigQuery =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse
        >('bigQuery');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    featureGroupId = registerOutput<String>('featureGroupId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
