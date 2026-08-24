// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spectrum_application_dns.dart';
import 'spectrum_application_edge_ips.dart';
import 'spectrum_application_origin_dns.dart';

/// {@template pulumi_index_spectrum_application_spectrum_application_args_doc}
/// The set of arguments for SpectrumApplication.
/// {@endtemplate}
/// {@macro pulumi_index_spectrum_application_spectrum_application_args_doc}
class SpectrumApplicationArgs {
  /// Enables Argo Smart Routing for this application.
  /// Notes: Only available for TCP applications with trafficType set to "direct".
  final pulumi.Input<bool?>? argoSmartRouting;
  /// The name and type of DNS record for the Spectrum application.
  final pulumi.Input<SpectrumApplicationDns> dns;
  /// The anycast edge IP configuration for the hostname of this application.
  final pulumi.Input<SpectrumApplicationEdgeIps?>? edgeIps;
  /// Enables IP Access Rules for this application.
  /// Notes: Only available for TCP applications.
  final pulumi.Input<bool?>? ipFirewall;
  /// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  final pulumi.Input<List<String>?>? originDirects;
  /// The name and type of DNS record for the Spectrum application.
  final pulumi.Input<SpectrumApplicationOriginDns?>? originDns;
  /// The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// Notes: If specifying a port range, the number of ports in the range must match the number of ports specified in the "protocol" field.
  final pulumi.Input<dynamic>? originPort;
  /// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  final pulumi.Input<String> protocol;
  /// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// Available values: "off", "v1", "v2", "simple".
  final pulumi.Input<String?>? proxyProtocol;
  /// The type of TLS termination associated with the application.
  /// Available values: "off", "flexible", "full", "strict".
  final pulumi.Input<String?>? tls;
  /// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// Available values: "direct", "http", "https".
  final pulumi.Input<String?>? trafficType;
  /// Optional UUID of a virtual network for routing origin traffic through tunnel virtual networks.
  final pulumi.Input<String?>? virtualNetworkId;
  /// Zone identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SpectrumApplicationArgs].
  /// [argoSmartRouting] Enables Argo Smart Routing for this application.
  /// [dns] The name and type of DNS record for the Spectrum application.
  /// [edgeIps] The anycast edge IP configuration for the hostname of this application.
  /// [ipFirewall] Enables IP Access Rules for this application.
  /// [originDirects] List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  /// [originDns] The name and type of DNS record for the Spectrum application.
  /// [originPort] The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// [protocol] The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  /// [proxyProtocol] Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// [tls] The type of TLS termination associated with the application.
  /// [trafficType] Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// [virtualNetworkId] Optional UUID of a virtual network for routing origin traffic through tunnel virtual networks.
  /// [zoneId] Zone identifier.
  const SpectrumApplicationArgs({
    this.argoSmartRouting,
    required this.dns,
    this.edgeIps,
    this.ipFirewall,
    this.originDirects,
    this.originDns,
    this.originPort,
    required this.protocol,
    this.proxyProtocol,
    this.tls,
    this.trafficType,
    this.virtualNetworkId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argoSmartRouting': ?argoSmartRouting,
      'dns': pulumi.Input.mapInputValue<SpectrumApplicationDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'edgeIps': ?pulumi.Input.mapOptionalInputValue<SpectrumApplicationEdgeIps, Map<String, dynamic>>(edgeIps, (value) => value.toMap()),
      'ipFirewall': ?ipFirewall,
      'originDirects': ?originDirects,
      'originDns': ?pulumi.Input.mapOptionalInputValue<SpectrumApplicationOriginDns, Map<String, dynamic>>(originDns, (value) => value.toMap()),
      'originPort': ?originPort,
      'protocol': protocol,
      'proxyProtocol': ?proxyProtocol,
      'tls': ?tls,
      'trafficType': ?trafficType,
      'virtualNetworkId': ?virtualNetworkId,
      'zoneId': zoneId,
    };
  }

  factory SpectrumApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SpectrumApplicationArgs(
      argoSmartRouting: (() { final guardedValue = map['argoSmartRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dns: pulumi.Input.fromValue(SpectrumApplicationDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      edgeIps: (() { final guardedValue = map['edgeIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpectrumApplicationEdgeIps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipFirewall: (() { final guardedValue = map['ipFirewall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originDirects: (() { final guardedValue = map['originDirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      originDns: (() { final guardedValue = map['originDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpectrumApplicationOriginDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originPort: (() { final guardedValue = map['originPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxyProtocol: (() { final guardedValue = map['proxyProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficType: (() { final guardedValue = map['trafficType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
