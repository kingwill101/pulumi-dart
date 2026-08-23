// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';

/// Specifies the selection and configuration of software inside the runtime. The properties to set on runtime. Properties keys are specified in `key:value` format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`
class RuntimeSoftwareConfigResponse {
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String> customGpuDriverPath;
  /// Bool indicating whether JupyterLab terminal will be available or not. Default: False
  final pulumi.Input<bool> disableTerminal;
  /// Verifies core internal services are running. Default: True
  final pulumi.Input<bool> enableHealthMonitoring;
  /// Runtime will automatically shutdown after idle_shutdown_time. Default: True
  final pulumi.Input<bool> idleShutdown;
  /// Time in minutes to wait before shutting down runtime. Default: 180 minutes
  final pulumi.Input<int> idleShutdownTimeout;
  /// Install Nvidia Driver automatically. Default: True
  final pulumi.Input<bool> installGpuDriver;
  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final pulumi.Input<List<ContainerImageResponse>> kernels;
  /// Bool indicating whether mixer client should be disabled. Default: False
  final pulumi.Input<bool> mixerDisabled;
  /// Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final pulumi.Input<String> notebookUpgradeSchedule;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final pulumi.Input<String> postStartupScript;
  /// Behavior for the post startup script.
  final pulumi.Input<String> postStartupScriptBehavior;
  /// Bool indicating whether an newer image is available in an image family.
  final pulumi.Input<bool> upgradeable;
  /// version of boot image such as M100, from release label of the image.
  final pulumi.Input<String> version;

  /// Creates a new [RuntimeSoftwareConfigResponse].
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [disableTerminal] Bool indicating whether JupyterLab terminal will be available or not. Default: False
  /// [enableHealthMonitoring] Verifies core internal services are running. Default: True
  /// [idleShutdown] Runtime will automatically shutdown after idle_shutdown_time. Default: True
  /// [idleShutdownTimeout] Time in minutes to wait before shutting down runtime. Default: 180 minutes
  /// [installGpuDriver] Install Nvidia Driver automatically. Default: True
  /// [kernels] Optional. Use a list of container images to use as Kernels in the notebook instance.
  /// [mixerDisabled] Bool indicating whether mixer client should be disabled. Default: False
  /// [notebookUpgradeSchedule] Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  /// [postStartupScriptBehavior] Behavior for the post startup script.
  /// [upgradeable] Bool indicating whether an newer image is available in an image family.
  /// [version] version of boot image such as M100, from release label of the image.
  const RuntimeSoftwareConfigResponse({
    required this.customGpuDriverPath,
    required this.disableTerminal,
    required this.enableHealthMonitoring,
    required this.idleShutdown,
    required this.idleShutdownTimeout,
    required this.installGpuDriver,
    required this.kernels,
    required this.mixerDisabled,
    required this.notebookUpgradeSchedule,
    required this.postStartupScript,
    required this.postStartupScriptBehavior,
    required this.upgradeable,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customGpuDriverPath': customGpuDriverPath,
      'disableTerminal': disableTerminal,
      'enableHealthMonitoring': enableHealthMonitoring,
      'idleShutdown': idleShutdown,
      'idleShutdownTimeout': idleShutdownTimeout,
      'installGpuDriver': installGpuDriver,
      'kernels': pulumi.Input.mapInputValue<List<ContainerImageResponse>, List<Map<String, dynamic>>>(kernels, (value) => pulumi.Input.encodeList<ContainerImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mixerDisabled': mixerDisabled,
      'notebookUpgradeSchedule': notebookUpgradeSchedule,
      'postStartupScript': postStartupScript,
      'postStartupScriptBehavior': postStartupScriptBehavior,
      'upgradeable': upgradeable,
      'version': version,
    };
  }

  factory RuntimeSoftwareConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfigResponse(
      customGpuDriverPath: pulumi.Input.fromValue(map['customGpuDriverPath'] as String),
      disableTerminal: pulumi.Input.fromValue(map['disableTerminal'] as bool),
      enableHealthMonitoring: pulumi.Input.fromValue(map['enableHealthMonitoring'] as bool),
      idleShutdown: pulumi.Input.fromValue(map['idleShutdown'] as bool),
      idleShutdownTimeout: pulumi.Input.fromValue(map['idleShutdownTimeout'] as int),
      installGpuDriver: pulumi.Input.fromValue(map['installGpuDriver'] as bool),
      kernels: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerImageResponse>(map['kernels']!, (value) => ContainerImageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      mixerDisabled: pulumi.Input.fromValue(map['mixerDisabled'] as bool),
      notebookUpgradeSchedule: pulumi.Input.fromValue(map['notebookUpgradeSchedule'] as String),
      postStartupScript: pulumi.Input.fromValue(map['postStartupScript'] as String),
      postStartupScriptBehavior: pulumi.Input.fromValue(map['postStartupScriptBehavior'] as String),
      upgradeable: pulumi.Input.fromValue(map['upgradeable'] as bool),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
