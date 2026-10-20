// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_schedule_spec_response.dart';
import 'google_cloud_datapipelines_v1_workload_response.dart';

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// Immutable. The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  final String? createTime;
  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  final String? displayName;
  /// Number of jobs.
  final int? jobCount;
  /// Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  final String? lastUpdateTime;
  /// The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  final String? name;
  /// Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  final Map<String, String>? pipelineSources;
  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  final GoogleCloudDatapipelinesV1ScheduleSpecResponse? scheduleInfo;
  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  final String? schedulerServiceAccountEmail;
  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  final String? state;
  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  final String? type;
  /// Workload information for creating new jobs.
  final GoogleCloudDatapipelinesV1WorkloadResponse? workload;

  /// Creates a new [GetPipelineResult].
  /// [createTime] Immutable. The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  /// [displayName] The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  /// [jobCount] Number of jobs.
  /// [lastUpdateTime] Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  /// [name] The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  /// [pipelineSources] Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  /// [scheduleInfo] Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  /// [schedulerServiceAccountEmail] Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  /// [state] The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  /// [type] The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  /// [workload] Workload information for creating new jobs.
  const GetPipelineResult({
    this.createTime,
    this.displayName,
    this.jobCount,
    this.lastUpdateTime,
    this.name,
    this.pipelineSources,
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
      'scheduleInfo': ?scheduleInfo?.toMap(),
      'schedulerServiceAccountEmail': ?schedulerServiceAccountEmail,
      'state': ?state,
      'type': ?type,
      'workload': ?workload?.toMap(),
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobCount: (() { final guardedValue = map['jobCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineSources: (() { final guardedValue = map['pipelineSources']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return GoogleCloudDatapipelinesV1ScheduleSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      schedulerServiceAccountEmail: (() { final guardedValue = map['schedulerServiceAccountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return GoogleCloudDatapipelinesV1WorkloadResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
