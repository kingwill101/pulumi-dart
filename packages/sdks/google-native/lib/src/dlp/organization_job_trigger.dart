import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'organization_job_trigger_args.dart';

/// Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
/// Auto-naming is currently not supported for this resource.
class OrganizationJobTrigger extends pulumi.CustomResource {
  /// The creation timestamp of a triggeredJob.
  late final pulumi.Output<String> createTime;
  /// User provided description (max 256 chars)
  late final pulumi.Output<String> description;
  /// Display name (max 100 chars)
  late final pulumi.Output<String> displayName;
  /// A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// For inspect jobs, a snapshot of the configuration.
  late final pulumi.Output<GooglePrivacyDlpV2InspectJobConfigResponse> inspectJob;
  /// The timestamp of the last time this trigger executed.
  late final pulumi.Output<String> lastRunTime;
  late final pulumi.Output<String> location;
  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// A status for this trigger.
  late final pulumi.Output<String> status;
  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  late final pulumi.Output<List<Map<String, dynamic>>> triggers;
  /// The last update timestamp of a triggeredJob.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationJobTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationJobTrigger]. {@macro pulumi_dlp_v2_organization_job_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationJobTrigger(
    String name, {
    OrganizationJobTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:OrganizationJobTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    inspectJob = registerOutput<GooglePrivacyDlpV2InspectJobConfigResponse>('inspectJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2InspectJobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastRunTime = registerOutput<String>('lastRunTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    status = registerOutput<String>('status');
    triggers = registerOutput<List<Map<String, dynamic>>>('triggers');
    updateTime = registerOutput<String>('updateTime');
  }
}
