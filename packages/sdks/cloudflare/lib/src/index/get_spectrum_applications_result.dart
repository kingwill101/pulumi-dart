// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spectrum_applications_result_dns.dart';
import 'get_spectrum_applications_result_edge_ips.dart';
import 'get_spectrum_applications_result_origin_dns.dart';

class GetSpectrumApplicationsResult {
  /// Enables Argo Smart Routing for this application.
  /// Notes: Only available for TCP applications with trafficType set to "direct".
  final pulumi.Input<bool> argoSmartRouting;
  /// When the Application was created.
  final pulumi.Input<String> createdOn;
  /// The name and type of DNS record for the Spectrum application.
  final pulumi.Input<GetSpectrumApplicationsResultDns> dns;
  /// The anycast edge IP configuration for the hostname of this application.
  final pulumi.Input<GetSpectrumApplicationsResultEdgeIps> edgeIps;
  /// App identifier.
  final pulumi.Input<String> id;
  /// Enables IP Access Rules for this application.
  /// Notes: Only available for TCP applications.
  final pulumi.Input<bool> ipFirewall;
  /// When the Application was last modified.
  final pulumi.Input<String> modifiedOn;
  /// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
  final pulumi.Input<List<String>> originDirects;
  /// The name and type of DNS record for the Spectrum application.
  final pulumi.Input<GetSpectrumApplicationsResultOriginDns> originDns;
  /// The destination port at the origin. Only specified in conjunction with origin_dns. May use an integer to specify a single origin port, for example `1000`, or a string to specify a range of origin ports, for example `"1000-2000"`.
  /// Notes: If specifying a port range, the number of ports in the range must match the number of ports specified in the "protocol" field.
  final pulumi.Input<dynamic> originPort;
  /// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
  final pulumi.Input<String> protocol;
  /// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
  /// Available values: "off", "v1", "v2", "simple".
  final pulumi.Input<String> proxyProtocol;
  /// The type of TLS termination associated with the application.
  /// Available values: "off", "flexible", "full", "strict".
  final pulumi.Input<String> tls;
  /// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
  /// Available values: "direct", "http", "https".
  final pulumi.Input<String> trafficType;

  /// Creates a new [GetSpectrumApplicationsResult].
  /// [argoSmartRouting] Enables Argo Smart Routing for this application.
  /// [createdOn] When the Application was created.
  /// [dns] The name and type of DNS record for the Spectrum application.
  /// [edgeIps] The anycast edge IP configuration for the hostname of this application.
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
  const GetSpectrumApplicationsResult({
    required this.argoSmartRouting,
    required this.createdOn,
    required this.dns,
    required this.edgeIps,
    required this.id,
    required this.ipFirewall,
    required this.modifiedOn,
    required this.originDirects,
    required this.originDns,
    required this.originPort,
    required this.protocol,
    required this.proxyProtocol,
    required this.tls,
    required this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argoSmartRouting': argoSmartRouting,
      'createdOn': createdOn,
      'dns': pulumi.Input.mapInputValue<GetSpectrumApplicationsResultDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'edgeIps': pulumi.Input.mapInputValue<GetSpectrumApplicationsResultEdgeIps, Map<String, dynamic>>(edgeIps, (value) => value.toMap()),
      'id': id,
      'ipFirewall': ipFirewall,
      'modifiedOn': modifiedOn,
      'originDirects': originDirects,
      'originDns': pulumi.Input.mapInputValue<GetSpectrumApplicationsResultOriginDns, Map<String, dynamic>>(originDns, (value) => value.toMap()),
      'originPort': originPort,
      'protocol': protocol,
      'proxyProtocol': proxyProtocol,
      'tls': tls,
      'trafficType': trafficType,
    };
  }

  factory GetSpectrumApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationsResult(
      argoSmartRouting: pulumi.Input.fromValue(map['argoSmartRouting'] as bool),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      dns: pulumi.Input.fromValue(GetSpectrumApplicationsResultDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      edgeIps: pulumi.Input.fromValue(GetSpectrumApplicationsResultEdgeIps.fromMap((map['edgeIps']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipFirewall: pulumi.Input.fromValue(map['ipFirewall'] as bool),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      originDirects: pulumi.Input.fromValue((map['originDirects'] as List).cast<String>()),
      originDns: pulumi.Input.fromValue(GetSpectrumApplicationsResultOriginDns.fromMap((map['originDns']! as Map).cast<String, dynamic>())),
      originPort: pulumi.Input.fromValue(map['originPort']),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxyProtocol: pulumi.Input.fromValue(map['proxyProtocol'] as String),
      tls: pulumi.Input.fromValue(map['tls'] as String),
      trafficType: pulumi.Input.fromValue(map['trafficType'] as String),
    );
  }
}
