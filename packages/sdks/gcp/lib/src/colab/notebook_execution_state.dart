// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_execution_custom_environment_spec.dart';
import 'notebook_execution_dataform_repository_source.dart';
import 'notebook_execution_direct_notebook_source.dart';
import 'notebook_execution_gcs_notebook_source.dart';

/// Input properties used for looking up and filtering NotebookExecution resources.
class NotebookExecutionState {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpec>? customEnvironmentSpec;
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDataformRepositorySource>? dataformRepositorySource;
  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDirectNotebookSource>? directNotebookSource;
  /// Required. The display name of the Notebook Execution.
  final pulumi.Input<String>? displayName;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  final pulumi.Input<String>? executionTimeout;
  /// The user email to run the execution as.
  final pulumi.Input<String>? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionGcsNotebookSource>? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final pulumi.Input<String>? gcsOutputUri;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String>? location;
  /// User specified ID for the Notebook Execution Job
  final pulumi.Input<String>? notebookExecutionJobId;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String>? notebookRuntimeTemplateResourceName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The service account to run the execution as.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [NotebookExecutionState].
  /// [customEnvironmentSpec] Compute configuration to use for an execution job
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
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
  NotebookExecutionState({
    pulumi.Output<NotebookExecutionCustomEnvironmentSpec>? customEnvironmentSpec,
    pulumi.Output<NotebookExecutionDataformRepositorySource>? dataformRepositorySource,
    pulumi.Output<NotebookExecutionDirectNotebookSource>? directNotebookSource,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? executionTimeout,
    pulumi.Output<String>? executionUser,
    pulumi.Output<NotebookExecutionGcsNotebookSource>? gcsNotebookSource,
    pulumi.Output<String>? gcsOutputUri,
    pulumi.Output<String>? location,
    pulumi.Output<String>? notebookExecutionJobId,
    pulumi.Output<String>? notebookRuntimeTemplateResourceName,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAccount,
  }) :
      customEnvironmentSpec = pulumi.Input.asOptionalInput<NotebookExecutionCustomEnvironmentSpec>(customEnvironmentSpec),
      dataformRepositorySource = pulumi.Input.asOptionalInput<NotebookExecutionDataformRepositorySource>(dataformRepositorySource),
      directNotebookSource = pulumi.Input.asOptionalInput<NotebookExecutionDirectNotebookSource>(directNotebookSource),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      executionTimeout = pulumi.Input.asOptionalInput<String>(executionTimeout),
      executionUser = pulumi.Input.asOptionalInput<String>(executionUser),
      gcsNotebookSource = pulumi.Input.asOptionalInput<NotebookExecutionGcsNotebookSource>(gcsNotebookSource),
      gcsOutputUri = pulumi.Input.asOptionalInput<String>(gcsOutputUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      notebookExecutionJobId = pulumi.Input.asOptionalInput<String>(notebookExecutionJobId),
      notebookRuntimeTemplateResourceName = pulumi.Input.asOptionalInput<String>(notebookRuntimeTemplateResourceName),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEnvironmentSpec': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionCustomEnvironmentSpec, Map<String, dynamic>>(customEnvironmentSpec, (value) => value.toMap()),
      'dataformRepositorySource': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionDataformRepositorySource, Map<String, dynamic>>(dataformRepositorySource, (value) => value.toMap()),
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
    };
  }

  factory NotebookExecutionState.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionState(
      customEnvironmentSpec: map['customEnvironmentSpec'] == null ? null : pulumi.Output.create<NotebookExecutionCustomEnvironmentSpec>(NotebookExecutionCustomEnvironmentSpec.fromMap((map['customEnvironmentSpec'] as Map).cast<String, dynamic>())),
      dataformRepositorySource: map['dataformRepositorySource'] == null ? null : pulumi.Output.create<NotebookExecutionDataformRepositorySource>(NotebookExecutionDataformRepositorySource.fromMap((map['dataformRepositorySource'] as Map).cast<String, dynamic>())),
      directNotebookSource: map['directNotebookSource'] == null ? null : pulumi.Output.create<NotebookExecutionDirectNotebookSource>(NotebookExecutionDirectNotebookSource.fromMap((map['directNotebookSource'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      executionTimeout: map['executionTimeout'] == null ? null : pulumi.Output.create<String>(map['executionTimeout'] as String),
      executionUser: map['executionUser'] == null ? null : pulumi.Output.create<String>(map['executionUser'] as String),
      gcsNotebookSource: map['gcsNotebookSource'] == null ? null : pulumi.Output.create<NotebookExecutionGcsNotebookSource>(NotebookExecutionGcsNotebookSource.fromMap((map['gcsNotebookSource'] as Map).cast<String, dynamic>())),
      gcsOutputUri: map['gcsOutputUri'] == null ? null : pulumi.Output.create<String>(map['gcsOutputUri'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      notebookExecutionJobId: map['notebookExecutionJobId'] == null ? null : pulumi.Output.create<String>(map['notebookExecutionJobId'] as String),
      notebookRuntimeTemplateResourceName: map['notebookRuntimeTemplateResourceName'] == null ? null : pulumi.Output.create<String>(map['notebookRuntimeTemplateResourceName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
    );
  }
}

