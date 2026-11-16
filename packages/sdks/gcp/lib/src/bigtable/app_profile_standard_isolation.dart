// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppProfileStandardIsolation {
  /// The memory config to use for requests sent using this app profile.
  /// If set, eligible single-row requests (currently limited to ReadRows) using this app profile will be routed to the memory layer. All eligible writes populate the memory layer. `memoryConfig` can only be set if the AppProfile uses single cluster routing and the configured cluster has a memory layer enabled.
  final pulumi.Input<Map<String, dynamic>?>? memoryConfig;
  /// The priority of requests sent using this app profile.
  /// Possible values are: `PRIORITY_LOW`, `PRIORITY_MEDIUM`, `PRIORITY_HIGH`.
  final pulumi.Input<String> priority;

  /// Creates a new [AppProfileStandardIsolation].
  /// [memoryConfig] The memory config to use for requests sent using this app profile.
  /// [priority] The priority of requests sent using this app profile.
  const AppProfileStandardIsolation({
    this.memoryConfig,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryConfig': ?memoryConfig,
      'priority': priority,
    };
  }

  factory AppProfileStandardIsolation.fromMap(Map<String, dynamic> map) {
    return AppProfileStandardIsolation(
      memoryConfig: (() { final guardedValue = map['memoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      priority: pulumi.Input.fromValue(map['priority'] as String),
    );
  }
}
