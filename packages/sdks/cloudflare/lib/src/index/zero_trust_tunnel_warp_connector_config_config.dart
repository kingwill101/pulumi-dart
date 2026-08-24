// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_warp_connector_config_config_vip.dart';
import 'zero_trust_tunnel_warp_connector_config_config_vips_previouse.dart';

class ZeroTrustTunnelWarpConnectorConfigConfig {
  /// Floating Network Resource ID — the secondary ENI that is moved between nodes on failover.
  final pulumi.Input<String?>? fnrId;
  /// VIPs to assign on the CloudflareWARP interface.
  final pulumi.Input<List<ZeroTrustTunnelWarpConnectorConfigConfigVip>?>? vips;
  /// VIPs to clean up on demotion or version drift.
  final pulumi.Input<List<ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>?>? vipsPreviouses;

  /// Creates a new [ZeroTrustTunnelWarpConnectorConfigConfig].
  /// [fnrId] Floating Network Resource ID — the secondary ENI that is moved between nodes on failover.
  /// [vips] VIPs to assign on the CloudflareWARP interface.
  /// [vipsPreviouses] VIPs to clean up on demotion or version drift.
  const ZeroTrustTunnelWarpConnectorConfigConfig({
    this.fnrId,
    this.vips,
    this.vipsPreviouses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fnrId': ?fnrId,
      'vips': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustTunnelWarpConnectorConfigConfigVip>, List<Map<String, dynamic>>>(vips, (value) => pulumi.Input.encodeList<ZeroTrustTunnelWarpConnectorConfigConfigVip, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vipsPreviouses': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>, List<Map<String, dynamic>>>(vipsPreviouses, (value) => pulumi.Input.encodeList<ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustTunnelWarpConnectorConfigConfig.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelWarpConnectorConfigConfig(
      fnrId: (() { final guardedValue = map['fnrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vips: (() { final guardedValue = map['vips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustTunnelWarpConnectorConfigConfigVip>(guardedValue, (value) => ZeroTrustTunnelWarpConnectorConfigConfigVip.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vipsPreviouses: (() { final guardedValue = map['vipsPreviouses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>(guardedValue, (value) => ZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
