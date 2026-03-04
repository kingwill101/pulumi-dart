import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_version_args.dart';

/// Create a version from a Dataset.
/// Auto-naming is currently not supported for this resource.
class DatasetVersion extends pulumi.CustomResource {
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

  /// Creates a new [DatasetVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetVersion]. {@macro pulumi_aiplatform_v1_dataset_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetVersion(
    String name, {
    DatasetVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1:DatasetVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
