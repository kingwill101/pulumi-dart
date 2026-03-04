// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of preserved resources.
class StatefulPolicyPreservedStateResponseComputeBeta {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final pulumi.Input<Map<String, String>> disks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>> externalIPs;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>> internalIPs;

  /// Creates a new [StatefulPolicyPreservedStateResponseComputeBeta].
  /// [disks] Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  /// [externalIPs] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  /// [internalIPs] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  StatefulPolicyPreservedStateResponseComputeBeta({
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

  factory StatefulPolicyPreservedStateResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return StatefulPolicyPreservedStateResponseComputeBeta(
      disks: pulumi.Input.fromValue(
        (map['disks'] as Map).cast<String, String>(),
      ),
      externalIPs: pulumi.Input.fromValue(
        (map['externalIPs'] as Map).cast<String, String>(),
      ),
      internalIPs: pulumi.Input.fromValue(
        (map['internalIPs'] as Map).cast<String, String>(),
      ),
    );
  }
}
