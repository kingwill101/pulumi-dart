// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_config_config_ingress.dart';
import 'get_zero_trust_tunnel_cloudflared_config_config_origin_request.dart';

class GetZeroTrustTunnelCloudflaredConfigConfig {
  /// List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  final pulumi.Input<List<GetZeroTrustTunnelCloudflaredConfigConfigIngress>> ingresses;
  /// Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  final pulumi.Input<GetZeroTrustTunnelCloudflaredConfigConfigOriginRequest> originRequest;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConfigConfig].
  /// [ingresses] List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  /// [originRequest] Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  const GetZeroTrustTunnelCloudflaredConfigConfig({
    required this.ingresses,
    required this.originRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingresses': pulumi.Input.mapInputValue<List<GetZeroTrustTunnelCloudflaredConfigConfigIngress>, List<Map<String, dynamic>>>(ingresses, (value) => pulumi.Input.encodeList<GetZeroTrustTunnelCloudflaredConfigConfigIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originRequest': pulumi.Input.mapInputValue<GetZeroTrustTunnelCloudflaredConfigConfigOriginRequest, Map<String, dynamic>>(originRequest, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustTunnelCloudflaredConfigConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConfigConfig(
      ingresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustTunnelCloudflaredConfigConfigIngress>(map['ingresses']!, (value) => GetZeroTrustTunnelCloudflaredConfigConfigIngress.fromMap((value as Map).cast<String, dynamic>()))),
      originRequest: pulumi.Input.fromValue(GetZeroTrustTunnelCloudflaredConfigConfigOriginRequest.fromMap((map['originRequest']! as Map).cast<String, dynamic>())),
    );
  }
}
