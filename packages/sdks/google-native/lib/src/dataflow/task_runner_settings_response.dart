// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_settings_response.dart';

/// Taskrunner configuration settings.
class TaskRunnerSettingsResponse {
  /// Whether to also send taskrunner log info to stderr.
  final pulumi.Input<bool> alsologtostderr;
  /// The location on the worker for task-specific subdirectories.
  final pulumi.Input<String> baseTaskDir;
  /// The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final pulumi.Input<String> baseUrl;
  /// The file to store preprocessing commands in.
  final pulumi.Input<String> commandlinesFileName;
  /// Whether to continue taskrunner if an exception is hit.
  final pulumi.Input<bool> continueOnException;
  /// The API version of endpoint, e.g. "v1b3"
  final pulumi.Input<String> dataflowApiVersion;
  /// The command to launch the worker harness.
  final pulumi.Input<String> harnessCommand;
  /// The suggested backend language.
  final pulumi.Input<String> languageHint;
  /// The directory on the VM to store logs.
  final pulumi.Input<String> logDir;
  /// Whether to send taskrunner log info to Google Compute Engine VM serial console.
  final pulumi.Input<bool> logToSerialconsole;
  /// Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String> logUploadLocation;
  /// The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  final pulumi.Input<List<String>> oauthScopes;
  /// The settings to pass to the parallel worker harness.
  final pulumi.Input<WorkerSettingsResponse> parallelWorkerSettings;
  /// The streaming worker main class name.
  final pulumi.Input<String> streamingWorkerMainClass;
  /// The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  final pulumi.Input<String> taskGroup;
  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  final pulumi.Input<String> taskUser;
  /// The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String> tempStoragePrefix;
  /// The ID string of the VM.
  final pulumi.Input<String> vmId;
  /// The file to store the workflow in.
  final pulumi.Input<String> workflowFileName;

  /// Creates a new [TaskRunnerSettingsResponse].
  /// [alsologtostderr] Whether to also send taskrunner log info to stderr.
  /// [baseTaskDir] The location on the worker for task-specific subdirectories.
  /// [baseUrl] The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  /// [commandlinesFileName] The file to store preprocessing commands in.
  /// [continueOnException] Whether to continue taskrunner if an exception is hit.
  /// [dataflowApiVersion] The API version of endpoint, e.g. "v1b3"
  /// [harnessCommand] The command to launch the worker harness.
  /// [languageHint] The suggested backend language.
  /// [logDir] The directory on the VM to store logs.
  /// [logToSerialconsole] Whether to send taskrunner log info to Google Compute Engine VM serial console.
  /// [logUploadLocation] Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [oauthScopes] The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  /// [parallelWorkerSettings] The settings to pass to the parallel worker harness.
  /// [streamingWorkerMainClass] The streaming worker main class name.
  /// [taskGroup] The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  /// [taskUser] The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  /// [tempStoragePrefix] The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [vmId] The ID string of the VM.
  /// [workflowFileName] The file to store the workflow in.
  const TaskRunnerSettingsResponse({
    required this.alsologtostderr,
    required this.baseTaskDir,
    required this.baseUrl,
    required this.commandlinesFileName,
    required this.continueOnException,
    required this.dataflowApiVersion,
    required this.harnessCommand,
    required this.languageHint,
    required this.logDir,
    required this.logToSerialconsole,
    required this.logUploadLocation,
    required this.oauthScopes,
    required this.parallelWorkerSettings,
    required this.streamingWorkerMainClass,
    required this.taskGroup,
    required this.taskUser,
    required this.tempStoragePrefix,
    required this.vmId,
    required this.workflowFileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alsologtostderr': alsologtostderr,
      'baseTaskDir': baseTaskDir,
      'baseUrl': baseUrl,
      'commandlinesFileName': commandlinesFileName,
      'continueOnException': continueOnException,
      'dataflowApiVersion': dataflowApiVersion,
      'harnessCommand': harnessCommand,
      'languageHint': languageHint,
      'logDir': logDir,
      'logToSerialconsole': logToSerialconsole,
      'logUploadLocation': logUploadLocation,
      'oauthScopes': oauthScopes,
      'parallelWorkerSettings': pulumi.Input.mapInputValue<WorkerSettingsResponse, Map<String, dynamic>>(parallelWorkerSettings, (value) => value.toMap()),
      'streamingWorkerMainClass': streamingWorkerMainClass,
      'taskGroup': taskGroup,
      'taskUser': taskUser,
      'tempStoragePrefix': tempStoragePrefix,
      'vmId': vmId,
      'workflowFileName': workflowFileName,
    };
  }

  factory TaskRunnerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TaskRunnerSettingsResponse(
      alsologtostderr: pulumi.Input.fromValue(map['alsologtostderr'] as bool),
      baseTaskDir: pulumi.Input.fromValue(map['baseTaskDir'] as String),
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      commandlinesFileName: pulumi.Input.fromValue(map['commandlinesFileName'] as String),
      continueOnException: pulumi.Input.fromValue(map['continueOnException'] as bool),
      dataflowApiVersion: pulumi.Input.fromValue(map['dataflowApiVersion'] as String),
      harnessCommand: pulumi.Input.fromValue(map['harnessCommand'] as String),
      languageHint: pulumi.Input.fromValue(map['languageHint'] as String),
      logDir: pulumi.Input.fromValue(map['logDir'] as String),
      logToSerialconsole: pulumi.Input.fromValue(map['logToSerialconsole'] as bool),
      logUploadLocation: pulumi.Input.fromValue(map['logUploadLocation'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
      parallelWorkerSettings: pulumi.Input.fromValue(WorkerSettingsResponse.fromMap((map['parallelWorkerSettings']! as Map).cast<String, dynamic>())),
      streamingWorkerMainClass: pulumi.Input.fromValue(map['streamingWorkerMainClass'] as String),
      taskGroup: pulumi.Input.fromValue(map['taskGroup'] as String),
      taskUser: pulumi.Input.fromValue(map['taskUser'] as String),
      tempStoragePrefix: pulumi.Input.fromValue(map['tempStoragePrefix'] as String),
      vmId: pulumi.Input.fromValue(map['vmId'] as String),
      workflowFileName: pulumi.Input.fromValue(map['workflowFileName'] as String),
    );
  }
}
