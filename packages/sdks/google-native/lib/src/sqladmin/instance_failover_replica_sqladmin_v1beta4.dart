// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name and status of the failover replica.
class InstanceFailoverReplicaSqladminV1beta4 {
  /// The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  final pulumi.Input<bool>? available;
  /// The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  final pulumi.Input<String>? name;

  /// Creates a new [InstanceFailoverReplicaSqladminV1beta4].
  /// [available] The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  /// [name] The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  const InstanceFailoverReplicaSqladminV1beta4({
    this.available,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'name': ?name,
    };
  }

  factory InstanceFailoverReplicaSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverReplicaSqladminV1beta4(
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
