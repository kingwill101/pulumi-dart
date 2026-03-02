// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PortFixedIp {
  /// IP address desired in the subnet for this port. If
  /// you don't specify `ip_address`, an available IP address from the specified
  /// subnet will be allocated to this port. This field will not be populated if it
  /// is left blank or omitted. To retrieve the assigned IP address, use the
  /// `all_fixed_ips` attribute.
  final pulumi.Input<String>? ipAddress;
  /// Subnet in which to allocate IP address for
  /// this port.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [PortFixedIp].
  /// [ipAddress] IP address desired in the subnet for this port. If
  /// [subnetId] Subnet in which to allocate IP address for
  PortFixedIp({
    this.ipAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetId': ?subnetId,
    };
  }

  factory PortFixedIp.fromMap(Map<String, dynamic> map) {
    return PortFixedIp(
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

