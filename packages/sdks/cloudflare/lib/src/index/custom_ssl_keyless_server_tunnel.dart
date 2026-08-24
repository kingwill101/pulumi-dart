// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomSslKeylessServerTunnel {
  /// Private IP of the Key Server Host.
  final pulumi.Input<String?>? privateIp;
  /// Cloudflare Tunnel Virtual Network ID.
  final pulumi.Input<String?>? vnetId;

  /// Creates a new [CustomSslKeylessServerTunnel].
  /// [privateIp] Private IP of the Key Server Host.
  /// [vnetId] Cloudflare Tunnel Virtual Network ID.
  const CustomSslKeylessServerTunnel({
    this.privateIp,
    this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIp': ?privateIp,
      'vnetId': ?vnetId,
    };
  }

  factory CustomSslKeylessServerTunnel.fromMap(Map<String, dynamic> map) {
    return CustomSslKeylessServerTunnel(
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetId: (() { final guardedValue = map['vnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
