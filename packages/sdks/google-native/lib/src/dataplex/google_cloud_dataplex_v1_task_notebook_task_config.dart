// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_infrastructure_spec.dart';

/// Config for running scheduled notebooks.
class GoogleCloudDataplexV1TaskNotebookTaskConfig {
  /// Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;
  /// Optional. Infrastructure specification for the execution.
  final pulumi.Input<GoogleCloudDataplexV1TaskInfrastructureSpec>? infrastructureSpec;
  /// Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  final pulumi.Input<String> notebook;

  /// Creates a new [GoogleCloudDataplexV1TaskNotebookTaskConfig].
  /// [archiveUris] Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Optional. Infrastructure specification for the execution.
  /// [notebook] Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  GoogleCloudDataplexV1TaskNotebookTaskConfig({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    required this.notebook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'fileUris': ?fileUris,
      'infrastructureSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskInfrastructureSpec, Map<String, dynamic>>(infrastructureSpec, (value) => value.toMap()),
      'notebook': notebook,
    };
  }

  factory GoogleCloudDataplexV1TaskNotebookTaskConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskNotebookTaskConfig(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris'] as List).cast<String>()).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris'] as List).cast<String>()).input(),
      infrastructureSpec: map['infrastructureSpec'] == null ? null : (GoogleCloudDataplexV1TaskInfrastructureSpec.fromMap((map['infrastructureSpec'] as Map).cast<String, dynamic>())).input(),
      notebook: (map['notebook'] as String).input(),
    );
  }
}

