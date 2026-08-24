// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_config_config_ingress.dart';
import 'tunnel_config_config_origin_request.dart';

class TunnelConfigConfig {
  /// List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  final pulumi.Input<List<TunnelConfigConfigIngress>?>? ingresses;
  /// Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  final pulumi.Input<TunnelConfigConfigOriginRequest?>? originRequest;

  /// Creates a new [TunnelConfigConfig].
  /// [ingresses] List of public hostname definitions. At least one ingress rule needs to be defined for the tunnel.
  /// [originRequest] Configuration parameters for the public hostname specific connection settings between cloudflared and origin server.
  const TunnelConfigConfig({
    this.ingresses,
    this.originRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingresses': ?pulumi.Input.mapOptionalInputValue<List<TunnelConfigConfigIngress>, List<Map<String, dynamic>>>(ingresses, (value) => pulumi.Input.encodeList<TunnelConfigConfigIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originRequest': ?pulumi.Input.mapOptionalInputValue<TunnelConfigConfigOriginRequest, Map<String, dynamic>>(originRequest, (value) => value.toMap()),
    };
  }

  factory TunnelConfigConfig.fromMap(Map<String, dynamic> map) {
    return TunnelConfigConfig(
      ingresses: (() { final guardedValue = map['ingresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TunnelConfigConfigIngress>(guardedValue, (value) => TunnelConfigConfigIngress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      originRequest: (() { final guardedValue = map['originRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelConfigConfigOriginRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
