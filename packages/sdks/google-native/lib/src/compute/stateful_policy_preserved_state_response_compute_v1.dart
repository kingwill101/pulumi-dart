// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of preserved resources.
class StatefulPolicyPreservedStateResponseComputeV1 {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final Map<String, String> disks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String> externalIPs;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String> internalIPs;

  /// Creates a new [StatefulPolicyPreservedStateResponseComputeV1].
  /// [disks] Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  /// [externalIPs] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  /// [internalIPs] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  StatefulPolicyPreservedStateResponseComputeV1({
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

  factory StatefulPolicyPreservedStateResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyPreservedStateResponseComputeV1(
      disks: (map['disks'] as Map).cast<String, String>(),
      externalIPs: (map['externalIPs'] as Map).cast<String, String>(),
      internalIPs: (map['internalIPs'] as Map).cast<String, String>(),
    );
  }
}

