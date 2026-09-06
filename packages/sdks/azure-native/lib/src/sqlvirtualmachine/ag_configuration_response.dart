// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_replica_response.dart';

/// Availability group configuration.
class AgConfigurationResponse {
  /// Replica configurations.
  final pulumi.Input<List<AgReplicaResponse>?>? replicas;

  /// Creates a new [AgConfigurationResponse].
  /// [replicas] Replica configurations.
  const AgConfigurationResponse({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<AgReplicaResponse>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<AgReplicaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AgConfigurationResponse(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgReplicaResponse>(guardedValue, (value) => AgReplicaResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
