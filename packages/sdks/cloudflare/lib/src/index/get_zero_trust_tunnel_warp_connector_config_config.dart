// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_warp_connector_config_config_vip.dart';
import 'get_zero_trust_tunnel_warp_connector_config_config_vips_previouse.dart';

class GetZeroTrustTunnelWarpConnectorConfigConfig {
  /// Floating Network Resource ID — the secondary ENI that is moved between nodes on failover.
  final pulumi.Input<String> fnrId;
  /// VIPs to assign on the CloudflareWARP interface.
  final pulumi.Input<List<GetZeroTrustTunnelWarpConnectorConfigConfigVip>> vips;
  /// VIPs to clean up on demotion or version drift.
  final pulumi.Input<List<GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>> vipsPreviouses;

  /// Creates a new [GetZeroTrustTunnelWarpConnectorConfigConfig].
  /// [fnrId] Floating Network Resource ID — the secondary ENI that is moved between nodes on failover.
  /// [vips] VIPs to assign on the CloudflareWARP interface.
  /// [vipsPreviouses] VIPs to clean up on demotion or version drift.
  const GetZeroTrustTunnelWarpConnectorConfigConfig({
    required this.fnrId,
    required this.vips,
    required this.vipsPreviouses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fnrId': fnrId,
      'vips': pulumi.Input.mapInputValue<List<GetZeroTrustTunnelWarpConnectorConfigConfigVip>, List<Map<String, dynamic>>>(vips, (value) => pulumi.Input.encodeList<GetZeroTrustTunnelWarpConnectorConfigConfigVip, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vipsPreviouses': pulumi.Input.mapInputValue<List<GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>, List<Map<String, dynamic>>>(vipsPreviouses, (value) => pulumi.Input.encodeList<GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustTunnelWarpConnectorConfigConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelWarpConnectorConfigConfig(
      fnrId: pulumi.Input.fromValue(map['fnrId'] as String),
      vips: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustTunnelWarpConnectorConfigConfigVip>(map['vips']!, (value) => GetZeroTrustTunnelWarpConnectorConfigConfigVip.fromMap((value as Map).cast<String, dynamic>()))),
      vipsPreviouses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse>(map['vipsPreviouses']!, (value) => GetZeroTrustTunnelWarpConnectorConfigConfigVipsPreviouse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
