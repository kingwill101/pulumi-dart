// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of preserved resources.
class StatefulPolicyPreservedState {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final pulumi.Input<Map<String, String>>? disks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>>? externalIPs;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final pulumi.Input<Map<String, String>>? internalIPs;

  /// Creates a new [StatefulPolicyPreservedState].
  /// [disks] Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  /// [externalIPs] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  /// [internalIPs] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  StatefulPolicyPreservedState({
    this.disks,
    this.externalIPs,
    this.internalIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks,
      'externalIPs': ?externalIPs,
      'internalIPs': ?internalIPs,
    };
  }

  factory StatefulPolicyPreservedState.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyPreservedState(
      disks: map['disks'] == null ? null : ((map['disks']! as Map).cast<String, String>()).input(),
      externalIPs: map['externalIPs'] == null ? null : ((map['externalIPs']! as Map).cast<String, String>()).input(),
      internalIPs: map['internalIPs'] == null ? null : ((map['internalIPs']! as Map).cast<String, String>()).input(),
    );
  }
}

