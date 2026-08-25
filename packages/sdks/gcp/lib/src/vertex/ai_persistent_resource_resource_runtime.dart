// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourceRuntime {
  /// (Output)
  /// URIs for user to connect to the Cluster.
  /// Example:
  /// {
  /// "RAY_HEAD_NODE_INTERNAL_IP": "head-node-IP:10001"
  /// "RAY_DASHBOARD_URI": "ray-dashboard-address:8888"
  /// }
  final pulumi.Input<Map<String, String>?>? accessUris;

  /// Creates a new [AiPersistentResourceResourceRuntime].
  /// [accessUris] (Output)
  const AiPersistentResourceResourceRuntime({
    this.accessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUris': ?accessUris,
    };
  }

  factory AiPersistentResourceResourceRuntime.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourceRuntime(
      accessUris: (() { final guardedValue = map['accessUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
