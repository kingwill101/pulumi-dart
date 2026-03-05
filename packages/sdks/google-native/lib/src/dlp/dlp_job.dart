import 'package:pulumi/pulumi.dart' as pulumi;
import 'dlp_job_args.dart';
import 'google_privacy_dlp_v2_analyze_data_source_risk_details_response.dart';
import 'google_privacy_dlp_v2_inspect_data_source_details_response.dart';

/// Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.
/// Auto-naming is currently not supported for this resource.
class DlpJob extends pulumi.CustomResource {
  /// Events that should occur after the job has completed.
  late final pulumi.Output<List<Map<String, dynamic>>> actionDetails;
  /// Time when the job was created.
  late final pulumi.Output<String> createTime;
  /// Time when the job finished.
  late final pulumi.Output<String> endTime;
  /// A stream of errors encountered running the job.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// Results from inspecting a data source.
  late final pulumi.Output<GooglePrivacyDlpV2InspectDataSourceDetailsResponse> inspectDetails;
  /// If created by a job trigger, the resource name of the trigger that instantiated the job.
  late final pulumi.Output<String> jobTriggerName;
  /// Time when the job was last modified by the system.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> location;
  /// The server-assigned name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Results from analyzing risk of a data source.
  late final pulumi.Output<GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse> riskDetails;
  /// Time when the job started.
  late final pulumi.Output<String> startTime;
  /// State of a job.
  late final pulumi.Output<String> state;
  /// The type of job.
  late final pulumi.Output<String> type;

  /// Creates a new [DlpJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DlpJob]. {@macro pulumi_dlp_v2_dlp_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DlpJob(
    String name, {
    DlpJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:DlpJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionDetails = registerOutput<List<Map<String, dynamic>>>('actionDetails');
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    inspectDetails = registerOutput<GooglePrivacyDlpV2InspectDataSourceDetailsResponse>('inspectDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2InspectDataSourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobTriggerName = registerOutput<String>('jobTriggerName');
    lastModified = registerOutput<String>('lastModified');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    riskDetails = registerOutput<GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse>('riskDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
