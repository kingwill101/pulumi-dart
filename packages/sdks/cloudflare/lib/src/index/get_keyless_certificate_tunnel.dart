// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeylessCertificateTunnel {
  /// Private IP of the Key Server Host.
  final pulumi.Input<String> privateIp;
  /// Cloudflare Tunnel Virtual Network ID.
  final pulumi.Input<String> vnetId;

  /// Creates a new [GetKeylessCertificateTunnel].
  /// [privateIp] Private IP of the Key Server Host.
  /// [vnetId] Cloudflare Tunnel Virtual Network ID.
  const GetKeylessCertificateTunnel({
    required this.privateIp,
    required this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIp': privateIp,
      'vnetId': vnetId,
    };
  }

  factory GetKeylessCertificateTunnel.fromMap(Map<String, dynamic> map) {
    return GetKeylessCertificateTunnel(
      privateIp: pulumi.Input.fromValue(map['privateIp'] as String),
      vnetId: pulumi.Input.fromValue(map['vnetId'] as String),
    );
  }
}
