// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'runtime_software_config_post_startup_script_behavior.dart';

/// Specifies the selection and configuration of software inside the runtime. The properties to set on runtime. Properties keys are specified in `key:value` format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`
class RuntimeSoftwareConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;
  /// Bool indicating whether JupyterLab terminal will be available or not. Default: False
  final pulumi.Input<bool>? disableTerminal;
  /// Verifies core internal services are running. Default: True
  final pulumi.Input<bool>? enableHealthMonitoring;
  /// Runtime will automatically shutdown after idle_shutdown_time. Default: True
  final pulumi.Input<bool>? idleShutdown;
  /// Time in minutes to wait before shutting down runtime. Default: 180 minutes
  final pulumi.Input<int>? idleShutdownTimeout;
  /// Install Nvidia Driver automatically. Default: True
  final pulumi.Input<bool>? installGpuDriver;
  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final pulumi.Input<List<ContainerImage>>? kernels;
  /// Bool indicating whether mixer client should be disabled. Default: False
  final pulumi.Input<bool>? mixerDisabled;
  /// Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final pulumi.Input<String>? notebookUpgradeSchedule;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final pulumi.Input<String>? postStartupScript;
  /// Behavior for the post startup script.
  final pulumi.Input<RuntimeSoftwareConfigPostStartupScriptBehavior>? postStartupScriptBehavior;

  /// Creates a new [RuntimeSoftwareConfig].
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
  RuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.disableTerminal,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.kernels,
    this.mixerDisabled,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customGpuDriverPath': ?customGpuDriverPath,
      'disableTerminal': ?disableTerminal,
      'enableHealthMonitoring': ?enableHealthMonitoring,
      'idleShutdown': ?idleShutdown,
      'idleShutdownTimeout': ?idleShutdownTimeout,
      'installGpuDriver': ?installGpuDriver,
      'kernels': ?pulumi.Input.mapOptionalInputValue<List<ContainerImage>, List<Map<String, dynamic>>>(kernels, (value) => pulumi.Input.encodeList<ContainerImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mixerDisabled': ?mixerDisabled,
      'notebookUpgradeSchedule': ?notebookUpgradeSchedule,
      'postStartupScript': ?postStartupScript,
      'postStartupScriptBehavior': ?pulumi.Input.mapOptionalInputValue<RuntimeSoftwareConfigPostStartupScriptBehavior, String>(postStartupScriptBehavior, (value) => value.value),
    };
  }

  factory RuntimeSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfig(
      customGpuDriverPath: map['customGpuDriverPath'] == null ? null : (map['customGpuDriverPath'] as String).input(),
      disableTerminal: map['disableTerminal'] == null ? null : (map['disableTerminal'] as bool).input(),
      enableHealthMonitoring: map['enableHealthMonitoring'] == null ? null : (map['enableHealthMonitoring'] as bool).input(),
      idleShutdown: map['idleShutdown'] == null ? null : (map['idleShutdown'] as bool).input(),
      idleShutdownTimeout: map['idleShutdownTimeout'] == null ? null : (map['idleShutdownTimeout'] as int).input(),
      installGpuDriver: map['installGpuDriver'] == null ? null : (map['installGpuDriver'] as bool).input(),
      kernels: map['kernels'] == null ? null : (pulumi.Input.decodeList<ContainerImage>(map['kernels'], (value) => ContainerImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mixerDisabled: map['mixerDisabled'] == null ? null : (map['mixerDisabled'] as bool).input(),
      notebookUpgradeSchedule: map['notebookUpgradeSchedule'] == null ? null : (map['notebookUpgradeSchedule'] as String).input(),
      postStartupScript: map['postStartupScript'] == null ? null : (map['postStartupScript'] as String).input(),
      postStartupScriptBehavior: map['postStartupScriptBehavior'] == null ? null : (RuntimeSoftwareConfigPostStartupScriptBehavior.fromValue(map['postStartupScriptBehavior'] as String)).input(),
    );
  }
}

