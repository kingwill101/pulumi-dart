// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app resource requirements.
class ResourceConfig {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;

  /// Required memory, e.g. "1Gi"
  final pulumi.Input<String>? memory;

  /// Creates a new [ResourceConfig].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [memory] Required memory, e.g. "1Gi"
  ResourceConfig({this.cpu, this.memory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': ?cpu, 'memory': ?memory};
  }

  factory ResourceConfig.fromMap(Map<String, dynamic> map) {
    return ResourceConfig(
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
