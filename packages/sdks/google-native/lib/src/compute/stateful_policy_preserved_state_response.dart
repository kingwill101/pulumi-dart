// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of preserved resources.
class StatefulPolicyPreservedStateResponse {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final pulumi.Input<Map<String, String>> disks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>> externalIPs;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>> internalIPs;

  /// Creates a new [StatefulPolicyPreservedStateResponse].
  /// [disks] Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  /// [externalIPs] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  /// [internalIPs] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  StatefulPolicyPreservedStateResponse({
    required this.disks,
    required this.externalIPs,
    required this.internalIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': disks,
      'externalIPs': externalIPs,
      'internalIPs': internalIPs,
    };
  }

  factory StatefulPolicyPreservedStateResponse.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyPreservedStateResponse(
      disks: ((map['disks'] as Map).cast<String, String>()).input(),
      externalIPs: ((map['externalIPs'] as Map).cast<String, String>()).input(),
      internalIPs: ((map['internalIPs'] as Map).cast<String, String>()).input(),
    );
  }
}

