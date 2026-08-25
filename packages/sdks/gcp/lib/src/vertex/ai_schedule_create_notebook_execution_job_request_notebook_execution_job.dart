// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_direct_notebook_source.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_encryption_spec.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source.dart';

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob {
  /// (Output)
  /// Timestamp when this NotebookExecutionJob was created.
  final pulumi.Input<String?>? createTime;
  /// Compute configuration to use for an execution job.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec?>? customEnvironmentSpec;
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource?>? dataformRepositorySource;
  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource?>? directNotebookSource;
  /// The display name of the NotebookExecutionJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String?>? displayName;
  /// Represents a customer-managed encryption key specification that can be applied to a Vertex AI resource.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec?>? encryptionSpec;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  final pulumi.Input<String?>? executionTimeout;
  /// The user email to run the execution as. Only supported by Colab runtimes.
  final pulumi.Input<String?>? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource?>? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format: `gs://bucket-name`
  final pulumi.Input<String?>? gcsOutputUri;
  /// (Output)
  /// Possible values: JOB_STATE_QUEUED JOB_STATE_PENDING JOB_STATE_RUNNING JOB_STATE_SUCCEEDED JOB_STATE_FAILED JOB_STATE_CANCELLING JOB_STATE_CANCELLED JOB_STATE_PAUSED JOB_STATE_EXPIRED JOB_STATE_UPDATING JOB_STATE_PARTIALLY_SUCCEEDED
  final pulumi.Input<String?>? jobState;
  /// The name of the kernel to use during notebook execution. If unset, the default kernel is used.
  final pulumi.Input<String?>? kernelName;
  /// The labels with user-defined metadata to organize NotebookExecutionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>?>? labels;
  /// (Output)
  /// The resource name of this NotebookExecutionJob. Format: `projects/{project_id}/locations/{location}/notebookExecutionJobs/{job_id}`
  final pulumi.Input<String?>? name;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String?>? notebookRuntimeTemplateResourceName;
  /// The user-defined parameters to use during notebook execution.
  final pulumi.Input<Map<String, String>?>? parameters;
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

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob].
  /// [createTime] (Output)
  /// [customEnvironmentSpec] Compute configuration to use for an execution job.
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
  /// [directNotebookSource] The content of the input notebook in ipynb format.
  /// [displayName] The display name of the NotebookExecutionJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Represents a customer-managed encryption key specification that can be applied to a Vertex AI resource.
  /// [executionTimeout] Max running time of the execution job in seconds (default 86400s / 24 hrs).
  /// [executionUser] The user email to run the execution as. Only supported by Colab runtimes.
  /// [gcsNotebookSource] The Cloud Storage uri for the input notebook.
  /// [gcsOutputUri] The Cloud Storage location to upload the result to. Format: `gs://bucket-name`
  /// [jobState] (Output)
  /// [kernelName] The name of the kernel to use during notebook execution. If unset, the default kernel is used.
  /// [labels] The labels with user-defined metadata to organize NotebookExecutionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] (Output)
  /// [notebookRuntimeTemplateResourceName] The NotebookRuntimeTemplate to source compute configuration from.
  /// [parameters] The user-defined parameters to use during notebook execution.
  /// [scheduleResourceName] (Output)
  /// [serviceAccount] The service account to run the execution as.
  /// [updateTime] (Output)
  /// [workbenchRuntime] Configuration for a Workbench Instances-based environment.
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob({
    this.createTime,
    this.customEnvironmentSpec,
    this.dataformRepositorySource,
    this.directNotebookSource,
    this.displayName,
    this.encryptionSpec,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    this.gcsOutputUri,
    this.jobState,
    this.kernelName,
    this.labels,
    this.name,
    this.notebookRuntimeTemplateResourceName,
    this.parameters,
    this.scheduleResourceName,
    this.serviceAccount,
    this.updateTime,
    this.workbenchRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customEnvironmentSpec': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec, Map<String, dynamic>>(customEnvironmentSpec, (value) => value.toMap()),
      'dataformRepositorySource': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource, Map<String, dynamic>>(dataformRepositorySource, (value) => value.toMap()),
      'directNotebookSource': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource, Map<String, dynamic>>(directNotebookSource, (value) => value.toMap()),
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'executionTimeout': ?executionTimeout,
      'executionUser': ?executionUser,
      'gcsNotebookSource': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource, Map<String, dynamic>>(gcsNotebookSource, (value) => value.toMap()),
      'gcsOutputUri': ?gcsOutputUri,
      'jobState': ?jobState,
      'kernelName': ?kernelName,
      'labels': ?labels,
      'name': ?name,
      'notebookRuntimeTemplateResourceName': ?notebookRuntimeTemplateResourceName,
      'parameters': ?parameters,
      'scheduleResourceName': ?scheduleResourceName,
      'serviceAccount': ?serviceAccount,
      'updateTime': ?updateTime,
      'workbenchRuntime': ?workbenchRuntime,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEnvironmentSpec: (() { final guardedValue = map['customEnvironmentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataformRepositorySource: (() { final guardedValue = map['dataformRepositorySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directNotebookSource: (() { final guardedValue = map['directNotebookSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionTimeout: (() { final guardedValue = map['executionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionUser: (() { final guardedValue = map['executionUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsNotebookSource: (() { final guardedValue = map['gcsNotebookSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsOutputUri: (() { final guardedValue = map['gcsOutputUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobState: (() { final guardedValue = map['jobState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kernelName: (() { final guardedValue = map['kernelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeTemplateResourceName: (() { final guardedValue = map['notebookRuntimeTemplateResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      scheduleResourceName: (() { final guardedValue = map['scheduleResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workbenchRuntime: (() { final guardedValue = map['workbenchRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
