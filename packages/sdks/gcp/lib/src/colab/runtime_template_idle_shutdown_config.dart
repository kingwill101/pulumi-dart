// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateIdleShutdownConfig {
  /// The duration after which the runtime is automatically shut down. An input of 0s disables the idle shutdown feature, and a valid range is [10m, 24h].
  final pulumi.Input<String>? idleTimeout;

  /// Creates a new [RuntimeTemplateIdleShutdownConfig].
  /// [idleTimeout] The duration after which the runtime is automatically shut down. An input of 0s disables the idle shutdown feature, and a valid range is [10m, 24h].
  RuntimeTemplateIdleShutdownConfig({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': ?idleTimeout,
    };
  }

  factory RuntimeTemplateIdleShutdownConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateIdleShutdownConfig(
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout']! as String).input(),
    );
  }
}

