// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a single node in the instance. Nodes in an AlloyDB instance are ephemereal, they can change during update, failover, autohealing and resize operations.
class NodeResponse {
  /// The private IP address of the VM e.g. "10.57.0.34".
  final pulumi.Input<String> ip;
  /// Determined by state of the compute VM and postgres-service health. Compute VM state can have values listed in https://cloud.google.com/compute/docs/instances/instance-life-cycle and postgres-service health can have values: HEALTHY and UNHEALTHY.
  final pulumi.Input<String> state;
  /// The Compute Engine zone of the VM e.g. "us-central1-b".
  final pulumi.Input<String> zone;

  /// Creates a new [NodeResponse].
  /// [ip] The private IP address of the VM e.g. "10.57.0.34".
  /// [state] Determined by state of the compute VM and postgres-service health. Compute VM state can have values listed in https://cloud.google.com/compute/docs/instances/instance-life-cycle and postgres-service health can have values: HEALTHY and UNHEALTHY.
  /// [zone] The Compute Engine zone of the VM e.g. "us-central1-b".
  NodeResponse({
    required this.ip,
    required this.state,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'state': state,
      'zone': zone,
    };
  }

  factory NodeResponse.fromMap(Map<String, dynamic> map) {
    return NodeResponse(
      ip: (map['ip'] as String).input(),
      state: (map['state'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

