// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This type describes the resource limits for a given container. It describes the most amount of resources a container is allowed to use before being restarted.
class ResourceLimitsResponse {
  /// CPU limits in cores. At present, only full cores are supported.
  final pulumi.Input<double>? cpu;
  /// The memory limit in GB.
  final pulumi.Input<double>? memoryInGB;

  /// Creates a new [ResourceLimitsResponse].
  /// [cpu] CPU limits in cores. At present, only full cores are supported.
  /// [memoryInGB] The memory limit in GB.
  ResourceLimitsResponse({
    this.cpu,
    this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryInGB': ?memoryInGB,
    };
  }

  factory ResourceLimitsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitsResponse(
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      memoryInGB: map['memoryInGB'] == null ? null : (map['memoryInGB'] as double).input(),
    );
  }
}

