// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_tunnel_cloudflared_config_config_ingress.dart';
import 'zero_trust_tunnel_cloudflared_config_config_origin_request.dart';

class ZeroTrustTunnelCloudflaredConfigConfig {
  /// List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  final pulumi.Input<List<ZeroTrustTunnelCloudflaredConfigConfigIngress>?>? ingresses;
  /// Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  final pulumi.Input<ZeroTrustTunnelCloudflaredConfigConfigOriginRequest?>? originRequest;

  /// Creates a new [ZeroTrustTunnelCloudflaredConfigConfig].
  /// [ingresses] List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  /// [originRequest] Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  const ZeroTrustTunnelCloudflaredConfigConfig({
    this.ingresses,
    this.originRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingresses': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustTunnelCloudflaredConfigConfigIngress>, List<Map<String, dynamic>>>(ingresses, (value) => pulumi.Input.encodeList<ZeroTrustTunnelCloudflaredConfigConfigIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originRequest': ?pulumi.Input.mapOptionalInputValue<ZeroTrustTunnelCloudflaredConfigConfigOriginRequest, Map<String, dynamic>>(originRequest, (value) => value.toMap()),
    };
  }

  factory ZeroTrustTunnelCloudflaredConfigConfig.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelCloudflaredConfigConfig(
      ingresses: (() { final guardedValue = map['ingresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustTunnelCloudflaredConfigConfigIngress>(guardedValue, (value) => ZeroTrustTunnelCloudflaredConfigConfigIngress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originRequest: (() { final guardedValue = map['originRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustTunnelCloudflaredConfigConfigOriginRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
