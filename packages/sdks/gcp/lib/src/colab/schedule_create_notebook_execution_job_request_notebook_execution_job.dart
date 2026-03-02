// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob {
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource>? dataformRepositorySource;
  /// Required. The display name of the Notebook Execution.
  final pulumi.Input<String> displayName;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  final pulumi.Input<String>? executionTimeout;
  /// The user email to run the execution as.
  final pulumi.Input<String>? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource>? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final pulumi.Input<String> gcsOutputUri;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String> notebookRuntimeTemplateResourceName;
  /// The service account to run the execution as.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob].
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
  /// [displayName] Required. The display name of the Notebook Execution.
  /// [executionTimeout] Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  /// [executionUser] The user email to run the execution as.
  /// [gcsNotebookSource] The Cloud Storage uri for the input notebook.
  /// [gcsOutputUri] The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  /// [notebookRuntimeTemplateResourceName] The NotebookRuntimeTemplate to source compute configuration from.
  /// [serviceAccount] The service account to run the execution as.
  ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob({
    this.dataformRepositorySource,
    required this.displayName,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    required this.gcsOutputUri,
    required this.notebookRuntimeTemplateResourceName,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataformRepositorySource': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource, Map<String, dynamic>>(dataformRepositorySource, (value) => value.toMap()),
      'displayName': displayName,
      'executionTimeout': ?executionTimeout,
      'executionUser': ?executionUser,
      'gcsNotebookSource': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource, Map<String, dynamic>>(gcsNotebookSource, (value) => value.toMap()),
      'gcsOutputUri': gcsOutputUri,
      'notebookRuntimeTemplateResourceName': notebookRuntimeTemplateResourceName,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob(
      dataformRepositorySource: map['dataformRepositorySource'] == null ? null : (ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap((map['dataformRepositorySource']! as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      executionTimeout: map['executionTimeout'] == null ? null : (map['executionTimeout']! as String).input(),
      executionUser: map['executionUser'] == null ? null : (map['executionUser']! as String).input(),
      gcsNotebookSource: map['gcsNotebookSource'] == null ? null : (ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap((map['gcsNotebookSource']! as Map).cast<String, dynamic>())).input(),
      gcsOutputUri: (map['gcsOutputUri'] as String).input(),
      notebookRuntimeTemplateResourceName: (map['notebookRuntimeTemplateResourceName'] as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
    );
  }
}

