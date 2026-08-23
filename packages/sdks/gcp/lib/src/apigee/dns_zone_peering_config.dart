// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DnsZonePeeringConfig {
  /// The name of the producer VPC network.
  final pulumi.Input<String> targetNetworkId;
  /// The ID of the project that contains the producer VPC network.
  final pulumi.Input<String> targetProjectId;

  /// Creates a new [DnsZonePeeringConfig].
  /// [targetNetworkId] The name of the producer VPC network.
  /// [targetProjectId] The ID of the project that contains the producer VPC network.
  const DnsZonePeeringConfig({
    required this.targetNetworkId,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetNetworkId': targetNetworkId,
      'targetProjectId': targetProjectId,
    };
  }

  factory DnsZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return DnsZonePeeringConfig(
      targetNetworkId: pulumi.Input.fromValue(map['targetNetworkId'] as String),
      targetProjectId: pulumi.Input.fromValue(map['targetProjectId'] as String),
    );
  }
}
