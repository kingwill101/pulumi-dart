// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePeeringConfigTargetNetwork {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  final pulumi.Input<String>? deactivateTime;
  final pulumi.Input<String>? kind;
  /// The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String>? networkUrl;

  /// Creates a new [ManagedZonePeeringConfigTargetNetwork].
  /// [deactivateTime] The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  const ManagedZonePeeringConfigTargetNetwork({
    this.deactivateTime,
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivateTime': ?deactivateTime,
      'kind': ?kind,
      'networkUrl': ?networkUrl,
    };
  }

  factory ManagedZonePeeringConfigTargetNetwork.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigTargetNetwork(
      deactivateTime: (() { final guardedValue = map['deactivateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkUrl: (() { final guardedValue = map['networkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

