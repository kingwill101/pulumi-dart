import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_healthcare_v1beta1_args.dart';

/// Creates a new health dataset. Results are returned through the Operation interface which returns either an `Operation.response` which contains a Dataset or `Operation.error`. The metadata field type is OperationMetadata.
class DatasetHealthcareV1beta1 extends pulumi.CustomResource {
  /// The ID of the dataset that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  late final pulumi.Output<String?> datasetId;
  late final pulumi.Output<String> location;

  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [DatasetHealthcareV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetHealthcareV1beta1]. {@macro pulumi_healthcare_v1beta1_dataset_healthcare_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetHealthcareV1beta1(
    String name, {
    DatasetHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:healthcare/v1beta1:Dataset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datasetId = registerOutput<String?>('datasetId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    timeZone = registerOutput<String>('timeZone');
  }
}
