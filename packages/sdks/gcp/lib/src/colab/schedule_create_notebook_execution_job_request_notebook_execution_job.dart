// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_encryption_spec.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob {
  /// (Output)
  /// Timestamp when this NotebookExecutionJob was created.
  final pulumi.Input<String?>? createTime;
  /// Compute configuration to use for an execution job.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec?>? customEnvironmentSpec;
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource?>? dataformRepositorySource;
  /// Required. The display name of the Notebook Execution.
  final pulumi.Input<String> displayName;
  /// Represents a customer-managed encryption key specification that can be applied to a Vertex AI resource.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec?>? encryptionSpec;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  final pulumi.Input<String?>? executionTimeout;
  /// The user email to run the execution as.
  final pulumi.Input<String?>? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource?>? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final pulumi.Input<String> gcsOutputUri;
  /// (Output)
  /// Possible values: JOB_STATE_QUEUED JOB_STATE_PENDING JOB_STATE_RUNNING JOB_STATE_SUCCEEDED JOB_STATE_FAILED JOB_STATE_CANCELLING JOB_STATE_CANCELLED JOB_STATE_PAUSED JOB_STATE_EXPIRED JOB_STATE_UPDATING JOB_STATE_PARTIALLY_SUCCEEDED
  final pulumi.Input<String?>? jobState;
  /// The name of the kernel to use during notebook execution. If unset, the default kernel is used.
  final pulumi.Input<String?>? kernelName;
  /// The labels with user-defined metadata to organize NotebookExecutionJobs.
  final pulumi.Input<Map<String, String>?>? labels;
  /// (Output)
  /// The resource name of this NotebookExecutionJob. Format: `projects/{project_id}/locations/{location}/notebookExecutionJobs/{job_id}`
  final pulumi.Input<String?>? name;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String?>? notebookRuntimeTemplateResourceName;
  /// (Output)
  /// The Schedule resource name if this job is triggered by one. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  final pulumi.Input<String?>? scheduleResourceName;
  /// The service account to run the execution as.
  final pulumi.Input<String?>? serviceAccount;
  /// (Output)
  /// Timestamp when this NotebookExecutionJob was most recently updated.
  final pulumi.Input<String?>? updateTime;
  /// Configuration for a Workbench Instances-based environment.
  final pulumi.Input<Map<String, dynamic>?>? workbenchRuntime;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob].
  /// [createTime] (Output)
  /// [customEnvironmentSpec] Compute configuration to use for an execution job.
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
  /// [displayName] Required. The display name of the Notebook Execution.
  /// [encryptionSpec] Represents a customer-managed encryption key specification that can be applied to a Vertex AI resource.
  /// [executionTimeout] Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  /// [executionUser] The user email to run the execution as.
  /// [gcsNotebookSource] The Cloud Storage uri for the input notebook.
  /// [gcsOutputUri] The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  /// [jobState] (Output)
  /// [kernelName] The name of the kernel to use during notebook execution. If unset, the default kernel is used.
  /// [labels] The labels with user-defined metadata to organize NotebookExecutionJobs.
  /// [name] (Output)
  /// [notebookRuntimeTemplateResourceName] The NotebookRuntimeTemplate to source compute configuration from.
  /// [scheduleResourceName] (Output)
  /// [serviceAccount] The service account to run the execution as.
  /// [updateTime] (Output)
  /// [workbenchRuntime] Configuration for a Workbench Instances-based environment.
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob({
    this.createTime,
    this.customEnvironmentSpec,
    this.dataformRepositorySource,
    required this.displayName,
    this.encryptionSpec,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    required this.gcsOutputUri,
    this.jobState,
    this.kernelName,
    this.labels,
    this.name,
    this.notebookRuntimeTemplateResourceName,
    this.scheduleResourceName,
    this.serviceAccount,
    this.updateTime,
    this.workbenchRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customEnvironmentSpec': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec, Map<String, dynamic>>(customEnvironmentSpec, (value) => value.toMap()),
      'dataformRepositorySource': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource, Map<String, dynamic>>(dataformRepositorySource, (value) => value.toMap()),
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'executionTimeout': ?executionTimeout,
      'executionUser': ?executionUser,
      'gcsNotebookSource': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource, Map<String, dynamic>>(gcsNotebookSource, (value) => value.toMap()),
      'gcsOutputUri': gcsOutputUri,
      'jobState': ?jobState,
      'kernelName': ?kernelName,
      'labels': ?labels,
      'name': ?name,
      'notebookRuntimeTemplateResourceName': ?notebookRuntimeTemplateResourceName,
      'scheduleResourceName': ?scheduleResourceName,
      'serviceAccount': ?serviceAccount,
      'updateTime': ?updateTime,
      'workbenchRuntime': ?workbenchRuntime,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEnvironmentSpec: (() { final guardedValue = map['customEnvironmentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataformRepositorySource: (() { final guardedValue = map['dataformRepositorySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionTimeout: (() { final guardedValue = map['executionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionUser: (() { final guardedValue = map['executionUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsNotebookSource: (() { final guardedValue = map['gcsNotebookSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsOutputUri: pulumi.Input.fromValue(map['gcsOutputUri'] as String),
      jobState: (() { final guardedValue = map['jobState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kernelName: (() { final guardedValue = map['kernelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeTemplateResourceName: (() { final guardedValue = map['notebookRuntimeTemplateResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleResourceName: (() { final guardedValue = map['scheduleResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workbenchRuntime: (() { final guardedValue = map['workbenchRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
