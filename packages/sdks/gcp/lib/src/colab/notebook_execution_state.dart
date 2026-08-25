// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_execution_custom_environment_spec.dart';
import 'notebook_execution_dataform_repository_source.dart';
import 'notebook_execution_direct_notebook_source.dart';
import 'notebook_execution_gcs_notebook_source.dart';
import 'notebook_execution_workbench_runtime.dart';

/// Input properties used for looking up and filtering NotebookExecution resources.
class NotebookExecutionState {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpec?>? customEnvironmentSpec;
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDataformRepositorySource?>? dataformRepositorySource;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDirectNotebookSource?>? directNotebookSource;
  /// Required. The display name of the Notebook Execution.
  final pulumi.Input<String?>? displayName;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  final pulumi.Input<String?>? executionTimeout;
  /// The user email to run the execution as.
  final pulumi.Input<String?>? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionGcsNotebookSource?>? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final pulumi.Input<String?>? gcsOutputUri;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String?>? location;
  /// User specified ID for the Notebook Execution Job
  final pulumi.Input<String?>? notebookExecutionJobId;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String?>? notebookRuntimeTemplateResourceName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The service account to run the execution as.
  final pulumi.Input<String?>? serviceAccount;
  /// Configuration for a Workbench Instances-based environment.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionWorkbenchRuntime?>? workbenchRuntime;

  /// Creates a new [NotebookExecutionState].
  /// [customEnvironmentSpec] Compute configuration to use for an execution job
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [directNotebookSource] The content of the input notebook in ipynb format.
  /// [displayName] Required. The display name of the Notebook Execution.
  /// [executionTimeout] Max running time of the execution job in seconds (default 86400s / 24 hrs).
  /// [executionUser] The user email to run the execution as.
  /// [gcsNotebookSource] The Cloud Storage uri for the input notebook.
  /// [gcsOutputUri] The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [notebookExecutionJobId] User specified ID for the Notebook Execution Job
  /// [notebookRuntimeTemplateResourceName] The NotebookRuntimeTemplate to source compute configuration from.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccount] The service account to run the execution as.
  /// [workbenchRuntime] Configuration for a Workbench Instances-based environment.
  const NotebookExecutionState({
    this.customEnvironmentSpec,
    this.dataformRepositorySource,
    this.deletionPolicy,
    this.directNotebookSource,
    this.displayName,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    this.gcsOutputUri,
    this.location,
    this.notebookExecutionJobId,
    this.notebookRuntimeTemplateResourceName,
    this.project,
    this.serviceAccount,
    this.workbenchRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEnvironmentSpec': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionCustomEnvironmentSpec, Map<String, dynamic>>(customEnvironmentSpec, (value) => value.toMap()),
      'dataformRepositorySource': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionDataformRepositorySource, Map<String, dynamic>>(dataformRepositorySource, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'directNotebookSource': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionDirectNotebookSource, Map<String, dynamic>>(directNotebookSource, (value) => value.toMap()),
      'displayName': ?displayName,
      'executionTimeout': ?executionTimeout,
      'executionUser': ?executionUser,
      'gcsNotebookSource': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionGcsNotebookSource, Map<String, dynamic>>(gcsNotebookSource, (value) => value.toMap()),
      'gcsOutputUri': ?gcsOutputUri,
      'location': ?location,
      'notebookExecutionJobId': ?notebookExecutionJobId,
      'notebookRuntimeTemplateResourceName': ?notebookRuntimeTemplateResourceName,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'workbenchRuntime': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionWorkbenchRuntime, Map<String, dynamic>>(workbenchRuntime, (value) => value.toMap()),
    };
  }

  factory NotebookExecutionState.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionState(
      customEnvironmentSpec: (() { final guardedValue = map['customEnvironmentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionCustomEnvironmentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataformRepositorySource: (() { final guardedValue = map['dataformRepositorySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionDataformRepositorySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directNotebookSource: (() { final guardedValue = map['directNotebookSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionDirectNotebookSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionTimeout: (() { final guardedValue = map['executionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionUser: (() { final guardedValue = map['executionUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsNotebookSource: (() { final guardedValue = map['gcsNotebookSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionGcsNotebookSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsOutputUri: (() { final guardedValue = map['gcsOutputUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookExecutionJobId: (() { final guardedValue = map['notebookExecutionJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeTemplateResourceName: (() { final guardedValue = map['notebookRuntimeTemplateResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workbenchRuntime: (() { final guardedValue = map['workbenchRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionWorkbenchRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
