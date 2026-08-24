// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceSubnetCapacity {
  /// Total number of assignable IPs in the subnet.
  final pulumi.Input<int> total;
  /// Number of assigned IPs in the subnet.
  final pulumi.Input<int> used;

  /// Creates a new [GetZeroTrustDeviceSubnetCapacity].
  /// [total] Total number of assignable IPs in the subnet.
  /// [used] Number of assigned IPs in the subnet.
  const GetZeroTrustDeviceSubnetCapacity({
    required this.total,
    required this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': total,
      'used': used,
    };
  }

  factory GetZeroTrustDeviceSubnetCapacity.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceSubnetCapacity(
      total: pulumi.Input.fromValue((map['total'] as num).toInt()),
      used: pulumi.Input.fromValue((map['used'] as num).toInt()),
    );
  }
}
