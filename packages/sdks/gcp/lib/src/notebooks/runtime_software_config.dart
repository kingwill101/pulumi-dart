// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_software_config_kernel.dart';

class RuntimeSoftwareConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;
  /// Verifies core internal services are running. Default: True.
  final pulumi.Input<bool>? enableHealthMonitoring;
  /// Runtime will automatically shutdown after idle_shutdown_time.
  /// Default: True
  final pulumi.Input<bool>? idleShutdown;
  /// Time in minutes to wait before shuting down runtime.
  /// Default: 180 minutes
  final pulumi.Input<int>? idleShutdownTimeout;
  /// Install Nvidia Driver automatically.
  final pulumi.Input<bool>? installGpuDriver;
  /// Use a list of container images to use as Kernels in the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<List<RuntimeSoftwareConfigKernel>>? kernels;
  /// Cron expression in UTC timezone for schedule instance auto upgrade.
  /// Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final pulumi.Input<String>? notebookUpgradeSchedule;
  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up. The path must be a URL or
  /// Cloud Storage path (gs://path-to-file/file-name).
  final pulumi.Input<String>? postStartupScript;
  /// Behavior for the post startup script.
  /// Possible values are: `POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED`, `RUN_EVERY_START`, `DOWNLOAD_AND_RUN_EVERY_START`.
  final pulumi.Input<String>? postStartupScriptBehavior;
  /// (Output)
  /// Bool indicating whether an newer image is available in an image family.
  final pulumi.Input<bool>? upgradeable;

  /// Creates a new [RuntimeSoftwareConfig].
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored.
  /// [enableHealthMonitoring] Verifies core internal services are running. Default: True.
  /// [idleShutdown] Runtime will automatically shutdown after idle_shutdown_time.
  /// [idleShutdownTimeout] Time in minutes to wait before shuting down runtime.
  /// [installGpuDriver] Install Nvidia Driver automatically.
  /// [kernels] Use a list of container images to use as Kernels in the notebook instance.
  /// [notebookUpgradeSchedule] Cron expression in UTC timezone for schedule instance auto upgrade.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance
  /// [postStartupScriptBehavior] Behavior for the post startup script.
  /// [upgradeable] (Output)
  const RuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.kernels,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.upgradeable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customGpuDriverPath': ?customGpuDriverPath,
      'enableHealthMonitoring': ?enableHealthMonitoring,
      'idleShutdown': ?idleShutdown,
      'idleShutdownTimeout': ?idleShutdownTimeout,
      'installGpuDriver': ?installGpuDriver,
      'kernels': ?pulumi.Input.mapOptionalInputValue<List<RuntimeSoftwareConfigKernel>, List<Map<String, dynamic>>>(kernels, (value) => pulumi.Input.encodeList<RuntimeSoftwareConfigKernel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notebookUpgradeSchedule': ?notebookUpgradeSchedule,
      'postStartupScript': ?postStartupScript,
      'postStartupScriptBehavior': ?postStartupScriptBehavior,
      'upgradeable': ?upgradeable,
    };
  }

  factory RuntimeSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfig(
      customGpuDriverPath: (() { final guardedValue = map['customGpuDriverPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableHealthMonitoring: (() { final guardedValue = map['enableHealthMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleShutdown: (() { final guardedValue = map['idleShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleShutdownTimeout: (() { final guardedValue = map['idleShutdownTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      installGpuDriver: (() { final guardedValue = map['installGpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kernels: (() { final guardedValue = map['kernels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuntimeSoftwareConfigKernel>(guardedValue, (value) => RuntimeSoftwareConfigKernel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notebookUpgradeSchedule: (() { final guardedValue = map['notebookUpgradeSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postStartupScriptBehavior: (() { final guardedValue = map['postStartupScriptBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeable: (() { final guardedValue = map['upgradeable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

