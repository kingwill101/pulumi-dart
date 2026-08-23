// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_settings.dart';

/// Taskrunner configuration settings.
class TaskRunnerSettings {
  /// Whether to also send taskrunner log info to stderr.
  final pulumi.Input<bool>? alsologtostderr;
  /// The location on the worker for task-specific subdirectories.
  final pulumi.Input<String>? baseTaskDir;
  /// The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final pulumi.Input<String>? baseUrl;
  /// The file to store preprocessing commands in.
  final pulumi.Input<String>? commandlinesFileName;
  /// Whether to continue taskrunner if an exception is hit.
  final pulumi.Input<bool>? continueOnException;
  /// The API version of endpoint, e.g. "v1b3"
  final pulumi.Input<String>? dataflowApiVersion;
  /// The command to launch the worker harness.
  final pulumi.Input<String>? harnessCommand;
  /// The suggested backend language.
  final pulumi.Input<String>? languageHint;
  /// The directory on the VM to store logs.
  final pulumi.Input<String>? logDir;
  /// Whether to send taskrunner log info to Google Compute Engine VM serial console.
  final pulumi.Input<bool>? logToSerialconsole;
  /// Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String>? logUploadLocation;
  /// The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  final pulumi.Input<List<String>>? oauthScopes;
  /// The settings to pass to the parallel worker harness.
  final pulumi.Input<WorkerSettings>? parallelWorkerSettings;
  /// The streaming worker main class name.
  final pulumi.Input<String>? streamingWorkerMainClass;
  /// The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  final pulumi.Input<String>? taskGroup;
  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  final pulumi.Input<String>? taskUser;
  /// The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<String>? tempStoragePrefix;
  /// The ID string of the VM.
  final pulumi.Input<String>? vmId;
  /// The file to store the workflow in.
  final pulumi.Input<String>? workflowFileName;

  /// Creates a new [TaskRunnerSettings].
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
  const TaskRunnerSettings({
    this.alsologtostderr,
    this.baseTaskDir,
    this.baseUrl,
    this.commandlinesFileName,
    this.continueOnException,
    this.dataflowApiVersion,
    this.harnessCommand,
    this.languageHint,
    this.logDir,
    this.logToSerialconsole,
    this.logUploadLocation,
    this.oauthScopes,
    this.parallelWorkerSettings,
    this.streamingWorkerMainClass,
    this.taskGroup,
    this.taskUser,
    this.tempStoragePrefix,
    this.vmId,
    this.workflowFileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alsologtostderr': ?alsologtostderr,
      'baseTaskDir': ?baseTaskDir,
      'baseUrl': ?baseUrl,
      'commandlinesFileName': ?commandlinesFileName,
      'continueOnException': ?continueOnException,
      'dataflowApiVersion': ?dataflowApiVersion,
      'harnessCommand': ?harnessCommand,
      'languageHint': ?languageHint,
      'logDir': ?logDir,
      'logToSerialconsole': ?logToSerialconsole,
      'logUploadLocation': ?logUploadLocation,
      'oauthScopes': ?oauthScopes,
      'parallelWorkerSettings': ?pulumi.Input.mapOptionalInputValue<WorkerSettings, Map<String, dynamic>>(parallelWorkerSettings, (value) => value.toMap()),
      'streamingWorkerMainClass': ?streamingWorkerMainClass,
      'taskGroup': ?taskGroup,
      'taskUser': ?taskUser,
      'tempStoragePrefix': ?tempStoragePrefix,
      'vmId': ?vmId,
      'workflowFileName': ?workflowFileName,
    };
  }

  factory TaskRunnerSettings.fromMap(Map<String, dynamic> map) {
    return TaskRunnerSettings(
      alsologtostderr: (() { final guardedValue = map['alsologtostderr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      baseTaskDir: (() { final guardedValue = map['baseTaskDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandlinesFileName: (() { final guardedValue = map['commandlinesFileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      continueOnException: (() { final guardedValue = map['continueOnException']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataflowApiVersion: (() { final guardedValue = map['dataflowApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      harnessCommand: (() { final guardedValue = map['harnessCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageHint: (() { final guardedValue = map['languageHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDir: (() { final guardedValue = map['logDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logToSerialconsole: (() { final guardedValue = map['logToSerialconsole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logUploadLocation: (() { final guardedValue = map['logUploadLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parallelWorkerSettings: (() { final guardedValue = map['parallelWorkerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamingWorkerMainClass: (() { final guardedValue = map['streamingWorkerMainClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskGroup: (() { final guardedValue = map['taskGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskUser: (() { final guardedValue = map['taskUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tempStoragePrefix: (() { final guardedValue = map['tempStoragePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowFileName: (() { final guardedValue = map['workflowFileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
