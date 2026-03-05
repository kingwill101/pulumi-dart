// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePeeringConfigTargetNetworkResponse {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  final pulumi.Input<String> deactivateTime;
  final pulumi.Input<String> kind;
  /// The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String> networkUrl;

  /// Creates a new [ManagedZonePeeringConfigTargetNetworkResponse].
  /// [deactivateTime] The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePeeringConfigTargetNetworkResponse({
    required this.deactivateTime,
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivateTime': deactivateTime,
      'kind': kind,
      'networkUrl': networkUrl,
    };
  }

  factory ManagedZonePeeringConfigTargetNetworkResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePeeringConfigTargetNetworkResponse(
      deactivateTime: pulumi.Input.fromValue(map['deactivateTime'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
    );
  }
}

