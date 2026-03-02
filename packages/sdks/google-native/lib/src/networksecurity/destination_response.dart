// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_match_response.dart';

/// Specification of traffic destination attributes.
class DestinationResponse {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final pulumi.Input<List<String>> hosts;
  /// Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  final pulumi.Input<HttpHeaderMatchResponse> httpHeaderMatch;
  /// Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final pulumi.Input<List<String>> methods;
  /// List of destination ports to match. At least one port should match.
  final pulumi.Input<List<int>> ports;

  /// Creates a new [DestinationResponse].
  /// [hosts] List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  /// [httpHeaderMatch] Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  /// [methods] Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  /// [ports] List of destination ports to match. At least one port should match.
  DestinationResponse({
    required this.hosts,
    required this.httpHeaderMatch,
    required this.methods,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'httpHeaderMatch': pulumi.Input.mapInputValue<HttpHeaderMatchResponse, Map<String, dynamic>>(httpHeaderMatch, (value) => value.toMap()),
      'methods': methods,
      'ports': ports,
    };
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      hosts: ((map['hosts'] as List).cast<String>()).input(),
      httpHeaderMatch: (HttpHeaderMatchResponse.fromMap((map['httpHeaderMatch'] as Map).cast<String, dynamic>())).input(),
      methods: ((map['methods'] as List).cast<String>()).input(),
      ports: ((map['ports'] as List).cast<int>()).input(),
    );
  }
}

