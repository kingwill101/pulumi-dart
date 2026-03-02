// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePeeringConfigTargetNetworkDnsV1beta2 {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  final pulumi.Input<String>? deactivateTime;
  final pulumi.Input<String>? kind;
  /// The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String>? networkUrl;

  /// Creates a new [ManagedZonePeeringConfigTargetNetworkDnsV1beta2].
  /// [deactivateTime] The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePeeringConfigTargetNetworkDnsV1beta2({
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

  factory ManagedZonePeeringConfigTargetNetworkDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigTargetNetworkDnsV1beta2(
      deactivateTime: map['deactivateTime'] == null ? null : (map['deactivateTime']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      networkUrl: map['networkUrl'] == null ? null : (map['networkUrl']! as String).input(),
    );
  }
}

