// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name and status of the failover replica.
class InstanceFailoverReplicaResponse {
  /// The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  final pulumi.Input<bool> available;
  /// The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  final pulumi.Input<String> name;

  /// Creates a new [InstanceFailoverReplicaResponse].
  /// [available] The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.
  /// [name] The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.
  const InstanceFailoverReplicaResponse({
    required this.available,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'name': name,
    };
  }

  factory InstanceFailoverReplicaResponse.fromMap(Map<String, dynamic> map) {
    return InstanceFailoverReplicaResponse(
      available: pulumi.Input.fromValue(map['available'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
