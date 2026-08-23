// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The idle shutdown configuration of NotebookRuntimeTemplate, which contains the idle_timeout as required field.
class GoogleCloudAiplatformV1NotebookIdleShutdownConfig {
  /// Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  final pulumi.Input<bool>? idleShutdownDisabled;
  /// Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  final pulumi.Input<String> idleTimeout;

  /// Creates a new [GoogleCloudAiplatformV1NotebookIdleShutdownConfig].
  /// [idleShutdownDisabled] Whether Idle Shutdown is disabled in this NotebookRuntimeTemplate.
  /// [idleTimeout] Duration is accurate to the second. In Notebook, Idle Timeout is accurate to minute so the range of idle_timeout (second) is: 10 * 60 ~ 1440 * 60.
  const GoogleCloudAiplatformV1NotebookIdleShutdownConfig({
    this.idleShutdownDisabled,
    required this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleShutdownDisabled': ?idleShutdownDisabled,
      'idleTimeout': idleTimeout,
    };
  }

  factory GoogleCloudAiplatformV1NotebookIdleShutdownConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NotebookIdleShutdownConfig(
      idleShutdownDisabled: (() { final guardedValue = map['idleShutdownDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as String),
    );
  }
}
