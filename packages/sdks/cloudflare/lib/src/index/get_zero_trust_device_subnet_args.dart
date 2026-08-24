// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_subnet_get_zero_trust_device_subnet_args_doc}
/// Arguments for getZeroTrustDeviceSubnet.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_subnet_get_zero_trust_device_subnet_args_doc}
class GetZeroTrustDeviceSubnetArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// The UUID of the subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetZeroTrustDeviceSubnetArgs].
  /// [accountId] Cloudflare account ID
  /// [subnetId] The UUID of the subnet.
  const GetZeroTrustDeviceSubnetArgs({
    this.accountId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'subnetId': subnetId,
    };
  }

  factory GetZeroTrustDeviceSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceSubnetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
