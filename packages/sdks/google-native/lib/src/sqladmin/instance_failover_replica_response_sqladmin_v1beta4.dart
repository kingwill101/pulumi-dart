// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name and status of the failover replica.
class InstanceFailoverReplicaResponseSqladminV1beta4 {
  /// The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  final pulumi.Input<bool> available;
  /// The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  final pulumi.Input<String> name;

  /// Creates a new [InstanceFailoverReplicaResponseSqladminV1beta4].
  /// [available] The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  /// [name] The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  const InstanceFailoverReplicaResponseSqladminV1beta4({
    required this.available,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'name': name,
    };
  }

  factory InstanceFailoverReplicaResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverReplicaResponseSqladminV1beta4(
      available: pulumi.Input.fromValue(map['available'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
