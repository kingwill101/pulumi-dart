// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_schedule_info.dart';
import 'pipeline_workload.dart';

/// Input properties used for looking up and filtering Pipeline resources.
class PipelineState {
  /// The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  final pulumi.Input<String>? displayName;
  /// Number of jobs.
  final pulumi.Input<int>? jobCount;
  /// The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastUpdateTime;
  /// "The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
  /// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects."
  /// "LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions."
  /// "PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location."
  final pulumi.Input<String>? name;
  /// The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? pipelineSources;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec
  /// Structure is documented below.
  final pulumi.Input<PipelineScheduleInfo>? scheduleInfo;
  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  final pulumi.Input<String>? schedulerServiceAccountEmail;
  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
  /// Possible values are: `STATE_UNSPECIFIED`, `STATE_RESUMING`, `STATE_ACTIVE`, `STATE_STOPPING`, `STATE_ARCHIVED`, `STATE_PAUSED`.
  final pulumi.Input<String>? state;
  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
  /// Possible values are: `PIPELINE_TYPE_UNSPECIFIED`, `PIPELINE_TYPE_BATCH`, `PIPELINE_TYPE_STREAMING`.
  final pulumi.Input<String>? type;
  /// Workload information for creating new jobs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkload>? workload;

  /// Creates a new [PipelineState].
  /// [createTime] The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
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
  PipelineState({
    this.createTime,
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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      jobCount: map['jobCount'] == null ? null : (map['jobCount'] as int).input(),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pipelineSources: map['pipelineSources'] == null ? null : ((map['pipelineSources'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scheduleInfo: map['scheduleInfo'] == null ? null : (PipelineScheduleInfo.fromMap((map['scheduleInfo'] as Map).cast<String, dynamic>())).input(),
      schedulerServiceAccountEmail: map['schedulerServiceAccountEmail'] == null ? null : (map['schedulerServiceAccountEmail'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      workload: map['workload'] == null ? null : (PipelineWorkload.fromMap((map['workload'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

