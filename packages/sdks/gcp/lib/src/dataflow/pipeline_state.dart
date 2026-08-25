// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_schedule_info.dart';
import 'pipeline_workload.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  final pulumi.Input<String?>? displayName;
  /// Number of jobs.
  final pulumi.Input<int?>? jobCount;
  /// The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? lastUpdateTime;
  /// "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects."
  /// "LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions."
  /// "PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location."
  final pulumi.Input<String?>? name;
  /// The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>?>? pipelineSources;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region
  final pulumi.Input<String?>? region;
  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec
  /// Structure is documented below.
  final pulumi.Input<PipelineScheduleInfo?>? scheduleInfo;
  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  final pulumi.Input<String?>? schedulerServiceAccountEmail;
  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
  /// Possible values are: `STATE_UNSPECIFIED`, `STATE_RESUMING`, `STATE_ACTIVE`, `STATE_STOPPING`, `STATE_ARCHIVED`, `STATE_PAUSED`.
  final pulumi.Input<String?>? state;
  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
  /// Possible values are: `PIPELINE_TYPE_UNSPECIFIED`, `PIPELINE_TYPE_BATCH`, `PIPELINE_TYPE_STREAMING`.
  final pulumi.Input<String?>? type;
  /// Workload information for creating new jobs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkload?>? workload;

  /// Creates a new [PipelineState].
  /// [createTime] The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  /// [jobCount] Number of jobs.
  /// [lastUpdateTime] The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// [name] "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// [pipelineSources] The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [scheduleInfo] Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// [schedulerServiceAccountEmail] Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  /// [state] The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// [type] The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// [workload] Workload information for creating new jobs.
  const PipelineState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.jobCount,
    this.lastUpdateTime,
    this.name,
    this.pipelineSources,
    this.project,
    this.region,
    this.scheduleInfo,
    this.schedulerServiceAccountEmail,
    this.state,
    this.type,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'jobCount': ?jobCount,
      'lastUpdateTime': ?lastUpdateTime,
      'name': ?name,
      'pipelineSources': ?pipelineSources,
      'project': ?project,
      'region': ?region,
      'scheduleInfo': ?pulumi.Input.mapOptionalInputValue<PipelineScheduleInfo, Map<String, dynamic>>(scheduleInfo, (value) => value.toMap()),
      'schedulerServiceAccountEmail': ?schedulerServiceAccountEmail,
      'state': ?state,
      'type': ?type,
      'workload': ?pulumi.Input.mapOptionalInputValue<PipelineWorkload, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory PipelineState.fromMap(Map<String, dynamic> map) {
    return PipelineState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobCount: (() { final guardedValue = map['jobCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineSources: (() { final guardedValue = map['pipelineSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulerServiceAccountEmail: (() { final guardedValue = map['schedulerServiceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineWorkload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
