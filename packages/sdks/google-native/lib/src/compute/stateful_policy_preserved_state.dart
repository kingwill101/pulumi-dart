// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of preserved resources.
class StatefulPolicyPreservedState {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final Map<String, String>? disks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String>? externalIPs;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String>? internalIPs;

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
      disks: map['disks'] == null ? null : (map['disks'] as Map).cast<String, String>(),
      externalIPs: map['externalIPs'] == null ? null : (map['externalIPs'] as Map).cast<String, String>(),
      internalIPs: map['internalIPs'] == null ? null : (map['internalIPs'] as Map).cast<String, String>(),
    );
  }
}

