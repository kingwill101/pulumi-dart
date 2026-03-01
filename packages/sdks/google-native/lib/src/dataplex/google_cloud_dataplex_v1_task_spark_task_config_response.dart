// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_infrastructure_spec_response.dart';

/// User-specified config for running a Spark task.
class GoogleCloudDataplexV1TaskSparkTaskConfigResponse {
  /// Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String> archiveUris;
  /// Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  final List<String> fileUris;
  /// Optional. Infrastructure specification for the execution.
  final GoogleCloudDataplexV1TaskInfrastructureSpecResponse infrastructureSpec;
  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String mainClass;
  /// The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String mainJarFileUri;
  /// The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).
  final String pythonScriptFile;
  /// The query text. The execution args are used to declare a set of script variables (set key="value";).
  final String sqlScript;
  /// A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key="value";).
  final String sqlScriptFile;

  /// Creates a new [GoogleCloudDataplexV1TaskSparkTaskConfigResponse].
  /// [archiveUris] Optional. Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [fileUris] Optional. Cloud Storage URIs of files to be placed in the working directory of each executor.
  /// [infrastructureSpec] Optional. Infrastructure specification for the execution.
  /// [mainClass] The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [mainJarFileUri] The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [pythonScriptFile] The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value).
  /// [sqlScript] The query text. The execution args are used to declare a set of script variables (set key="value";).
  /// [sqlScriptFile] A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key="value";).
  GoogleCloudDataplexV1TaskSparkTaskConfigResponse({
    required this.archiveUris,
    required this.fileUris,
    required this.infrastructureSpec,
    required this.mainClass,
    required this.mainJarFileUri,
    required this.pythonScriptFile,
    required this.sqlScript,
    required this.sqlScriptFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'fileUris': fileUris,
      'infrastructureSpec': infrastructureSpec.toMap(),
      'mainClass': mainClass,
      'mainJarFileUri': mainJarFileUri,
      'pythonScriptFile': pythonScriptFile,
      'sqlScript': sqlScript,
      'sqlScriptFile': sqlScriptFile,
    };
  }

  factory GoogleCloudDataplexV1TaskSparkTaskConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskSparkTaskConfigResponse(
      archiveUris: (map['archiveUris'] as List).cast<String>(),
      fileUris: (map['fileUris'] as List).cast<String>(),
      infrastructureSpec: GoogleCloudDataplexV1TaskInfrastructureSpecResponse.fromMap((map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      mainClass: map['mainClass'] as String,
      mainJarFileUri: map['mainJarFileUri'] as String,
      pythonScriptFile: map['pythonScriptFile'] as String,
      sqlScript: map['sqlScript'] as String,
      sqlScriptFile: map['sqlScriptFile'] as String,
    );
  }
}

