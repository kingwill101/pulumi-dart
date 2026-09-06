// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Initial replication details.
class InitialReplicationDetailsResponse {
  /// The initial replication progress percentage.
  final pulumi.Input<String?>? initialReplicationProgressPercentage;
  /// Initial replication type.
  final pulumi.Input<String?>? initialReplicationType;

  /// Creates a new [InitialReplicationDetailsResponse].
  /// [initialReplicationProgressPercentage] The initial replication progress percentage.
  /// [initialReplicationType] Initial replication type.
  const InitialReplicationDetailsResponse({
    this.initialReplicationProgressPercentage,
    this.initialReplicationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialReplicationProgressPercentage': ?initialReplicationProgressPercentage,
      'initialReplicationType': ?initialReplicationType,
    };
  }

  factory InitialReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InitialReplicationDetailsResponse(
      initialReplicationProgressPercentage: (() { final guardedValue = map['initialReplicationProgressPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialReplicationType: (() { final guardedValue = map['initialReplicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
