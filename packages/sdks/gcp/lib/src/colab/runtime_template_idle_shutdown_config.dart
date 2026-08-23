// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateIdleShutdownConfig {
  /// The duration after which the runtime is automatically shut down. An input of 0s disables the idle shutdown feature, and a valid range is [10m, 24h].
  final pulumi.Input<String>? idleTimeout;

  /// Creates a new [RuntimeTemplateIdleShutdownConfig].
  /// [idleTimeout] The duration after which the runtime is automatically shut down. An input of 0s disables the idle shutdown feature, and a valid range is [10m, 24h].
  const RuntimeTemplateIdleShutdownConfig({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': ?idleTimeout,
    };
  }

  factory RuntimeTemplateIdleShutdownConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateIdleShutdownConfig(
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
