// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app resource requirements.
class ResourceConfigResponse {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;
  /// Required memory, e.g. "1Gi"
  final pulumi.Input<String>? memory;

  /// Creates a new [ResourceConfigResponse].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [memory] Required memory, e.g. "1Gi"
  ResourceConfigResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory ResourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ResourceConfigResponse(
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

