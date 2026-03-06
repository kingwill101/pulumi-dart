// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_notebook_infrastructure_spec.dart';

class TaskNotebook {
  /// Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// Cloud Storage URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;
  /// Infrastructure specification for the execution.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebookInfrastructureSpec>? infrastructureSpec;
  /// Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  final pulumi.Input<String> notebook;

  /// Creates a new [TaskNotebook].
  /// [archiveUris] Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Infrastructure specification for the execution.
  /// [notebook] Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  const TaskNotebook({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    required this.notebook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'fileUris': ?fileUris,
      'infrastructureSpec': ?pulumi.Input.mapOptionalInputValue<TaskNotebookInfrastructureSpec, Map<String, dynamic>>(infrastructureSpec, (value) => value.toMap()),
      'notebook': notebook,
    };
  }

  factory TaskNotebook.fromMap(Map<String, dynamic> map) {
    return TaskNotebook(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      infrastructureSpec: (() { final guardedValue = map['infrastructureSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskNotebookInfrastructureSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notebook: pulumi.Input.fromValue(map['notebook'] as String),
    );
  }
}

