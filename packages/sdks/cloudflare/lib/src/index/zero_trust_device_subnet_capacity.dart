// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceSubnetCapacity {
  /// Total number of assignable IPs in the subnet.
  final pulumi.Input<int?>? total;
  /// Number of assigned IPs in the subnet.
  final pulumi.Input<int?>? used;

  /// Creates a new [ZeroTrustDeviceSubnetCapacity].
  /// [total] Total number of assignable IPs in the subnet.
  /// [used] Number of assigned IPs in the subnet.
  const ZeroTrustDeviceSubnetCapacity({
    this.total,
    this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': ?total,
      'used': ?used,
    };
  }

  factory ZeroTrustDeviceSubnetCapacity.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceSubnetCapacity(
      total: (() { final guardedValue = map['total']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      used: (() { final guardedValue = map['used']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
