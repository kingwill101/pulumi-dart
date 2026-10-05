import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_version_aiplatform_v1beta1_args.dart';

/// Create a version from a Dataset.
/// Auto-naming is currently not supported for this resource.
class DatasetVersionAiplatformV1beta1 extends pulumi.CustomResource {
  /// Name of the associated BigQuery dataset.
  late final pulumi.Output<String> bigQueryDatasetName;
  /// Timestamp when this DatasetVersion was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> datasetId;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  /// The resource name of the DatasetVersion.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Timestamp when this DatasetVersion was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DatasetVersionAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetVersionAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_dataset_version_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetVersionAiplatformV1beta1(
    String name, {
    DatasetVersionAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:DatasetVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['datasetId', 'location', 'project']).merge(options),
        ) {
    bigQueryDatasetName = registerOutput<String>('bigQueryDatasetName');
    createTime = registerOutput<String>('createTime');
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DatasetVersionAiplatformV1beta1] resource.
  DatasetVersionAiplatformV1beta1.reference(String urn)
    : super(
        'google-native:aiplatform/v1beta1:DatasetVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bigQueryDatasetName = registerOutput<String>('bigQueryDatasetName');
    createTime = registerOutput<String>('createTime');
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
