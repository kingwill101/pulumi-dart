// ignore_for_file: unused_element, unnecessary_cast

import 'get_spectrum_application_dns.dart';
import 'get_spectrum_application_edge_ips.dart';
import 'get_spectrum_application_filter.dart';
import 'get_spectrum_application_origin_dns.dart';

/// Result data returned by getSpectrumApplication.
class GetSpectrumApplicationResult {
  /// App identifier.
  final String? appId;
  /// Enables Argo Smart Routing for this application.
  /// Notes: Only available for TCP or UDP applications with trafficType set to "direct".
  final bool? argoSmartRouting;
  /// When the Application was created.
  final String? createdOn;
  /// The name and type of DNS record for the Spectrum application.
  final GetSpectrumApplicationDns? dns;
  /// The anycast edge IP configuration for the hostname of this application.
  final GetSpectrumApplicationEdgeIps? edgeIps;
  final GetSpectrumApplicationFilter? filter;
  /// App identifier.
  final String? id;
  /// Enables IP Access Rules for this application.
  /// Notes: Only available for TCP applications.
  final bool? ipFirewall;
  /// When the Application was last modified.
  final String? modifiedOn;
  /// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  final List<String>? originDirects;
  /// The name and type of DNS record for the Spectrum application.
  final GetSpectrumApplicationOriginDns? originDns;
  /// The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// Notes: If specifying a port range, the number of ports in the range must match the number of ports specified in the "protocol" field.
  final dynamic originPort;
  /// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  final String? protocol;
  /// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// Available values: "off", "v1", "v2", "simple".
  final String? proxyProtocol;
  /// The type of TLS termination associated with the application.
  /// Available values: "off", "flexible", "full", "strict".
  final String? tls;
  /// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// Available values: "direct", "http", "https".
  final String? trafficType;
  /// Optional UUID of a virtual network for routing origin traffic through tunnel virtual networks.
  final String? virtualNetworkId;
  /// Zone identifier.
  final String? zoneId;

  /// Creates a new [GetSpectrumApplicationResult].
  /// [appId] App identifier.
  /// [argoSmartRouting] Enables Argo Smart Routing for this application.
  /// [createdOn] When the Application was created.
  /// [dns] The name and type of DNS record for the Spectrum application.
  /// [edgeIps] The anycast edge IP configuration for the hostname of this application.
  /// [filter] Optional.
  /// [id] App identifier.
  /// [ipFirewall] Enables IP Access Rules for this application.
  /// [modifiedOn] When the Application was last modified.
  /// [originDirects] List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  /// [originDns] The name and type of DNS record for the Spectrum application.
  /// [originPort] The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// [protocol] The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  /// [proxyProtocol] Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// [tls] The type of TLS termination associated with the application.
  /// [trafficType] Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// [virtualNetworkId] Optional UUID of a virtual network for routing origin traffic through tunnel virtual networks.
  /// [zoneId] Zone identifier.
  const GetSpectrumApplicationResult({
    this.appId,
    this.argoSmartRouting,
    this.createdOn,
    this.dns,
    this.edgeIps,
    this.filter,
    this.id,
    this.ipFirewall,
    this.modifiedOn,
    this.originDirects,
    this.originDns,
    this.originPort,
    this.protocol,
    this.proxyProtocol,
    this.tls,
    this.trafficType,
    this.virtualNetworkId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'argoSmartRouting': ?argoSmartRouting,
      'createdOn': ?createdOn,
      'dns': ?dns?.toMap(),
      'edgeIps': ?edgeIps?.toMap(),
      'filter': ?filter?.toMap(),
      'id': ?id,
      'ipFirewall': ?ipFirewall,
      'modifiedOn': ?modifiedOn,
      'originDirects': ?originDirects,
      'originDns': ?originDns?.toMap(),
      'originPort': ?originPort,
      'protocol': ?protocol,
      'proxyProtocol': ?proxyProtocol,
      'tls': ?tls,
      'trafficType': ?trafficType,
      'virtualNetworkId': ?virtualNetworkId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSpectrumApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationResult(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      argoSmartRouting: (() { final guardedValue = map['argoSmartRouting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return GetSpectrumApplicationDns.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      edgeIps: (() { final guardedValue = map['edgeIps']; if (guardedValue == null) return null; return GetSpectrumApplicationEdgeIps.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetSpectrumApplicationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipFirewall: (() { final guardedValue = map['ipFirewall']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originDirects: (() { final guardedValue = map['originDirects']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      originDns: (() { final guardedValue = map['originDns']; if (guardedValue == null) return null; return GetSpectrumApplicationOriginDns.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      originPort: (() { final guardedValue = map['originPort']; if (guardedValue == null) return null; return guardedValue; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyProtocol: (() { final guardedValue = map['proxyProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trafficType: (() { final guardedValue = map['trafficType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
