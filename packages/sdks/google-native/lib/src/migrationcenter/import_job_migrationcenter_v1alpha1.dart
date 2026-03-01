import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_report_response_migrationcenter_v1alpha1.dart';
import 'gcspayload_info_response.dart';
import 'import_job_migrationcenter_v1alpha1_args.dart';
import 'inline_payload_info_response.dart';
import 'validation_report_response_migrationcenter_v1alpha1.dart';

/// Creates an import job.
/// Auto-naming is currently not supported for this resource.
class ImportJobMigrationcenterV1alpha1 extends pulumi.CustomResource {
  /// Reference to a source.
  late final pulumi.Output<String> assetSource;
  /// The timestamp when the import job was completed.
  late final pulumi.Output<String> completeTime;
  /// The timestamp when the import job was created.
  late final pulumi.Output<String> createTime;
  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String> displayName;
  /// The report with the results of running the import job.
  late final pulumi.Output<ExecutionReportResponseMigrationcenterV1alpha1> executionReport;
  /// The payload is in Google Cloud Storage.
  late final pulumi.Output<GCSPayloadInfoResponse> gcsPayload;
  /// Required. ID of the import job.
  late final pulumi.Output<String> importJobId;
  /// The payload is included in the request, mainly used for small import jobs.
  late final pulumi.Output<InlinePayloadInfoResponse> inlinePayload;
  /// Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The full name of the import job.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The state of the import job.
  late final pulumi.Output<String> state;
  /// The timestamp when the import job was last updated.
  late final pulumi.Output<String> updateTime;
  /// The report with the validation results of the import job.
  late final pulumi.Output<ValidationReportResponseMigrationcenterV1alpha1> validationReport;

  /// Creates a new [ImportJobMigrationcenterV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportJobMigrationcenterV1alpha1]. {@macro pulumi_migrationcenter_v1alpha1_import_job_migrationcenter_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportJobMigrationcenterV1alpha1(
    String name, {
    ImportJobMigrationcenterV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:ImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assetSource = registerOutput<String>('assetSource');
    this.completeTime = registerOutput<String>('completeTime');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.executionReport = registerOutput<ExecutionReportResponseMigrationcenterV1alpha1>('executionReport');
    this.gcsPayload = registerOutput<GCSPayloadInfoResponse>('gcsPayload');
    this.importJobId = registerOutput<String>('importJobId');
    this.inlinePayload = registerOutput<InlinePayloadInfoResponse>('inlinePayload');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationReport = registerOutput<ValidationReportResponseMigrationcenterV1alpha1>('validationReport');
  }
}
