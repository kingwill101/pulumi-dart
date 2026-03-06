// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "AND"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
class TlsRouteRouteMatchResponse {
  /// Optional. ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "h2". At least one of sni_host and alpn is required. Up to 5 alpns across all matches can be set.
  final pulumi.Input<List<String>> alpn;
  /// Optional. SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. `www.example.com` will be first matched against `www.example.com`, then `*.example.com`, then `*.com.` Partial wildcards are not supported, and values like *w.example.com are invalid. At least one of sni_host and alpn is required. Up to 5 sni hosts across all matches can be set.
  final pulumi.Input<List<String>> sniHost;

  /// Creates a new [TlsRouteRouteMatchResponse].
  /// [alpn] Optional. ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "h2". At least one of sni_host and alpn is required. Up to 5 alpns across all matches can be set.
  /// [sniHost] Optional. SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. `www.example.com` will be first matched against `www.example.com`, then `*.example.com`, then `*.com.` Partial wildcards are not supported, and values like *w.example.com are invalid. At least one of sni_host and alpn is required. Up to 5 sni hosts across all matches can be set.
  const TlsRouteRouteMatchResponse({
    required this.alpn,
    required this.sniHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpn': alpn,
      'sniHost': sniHost,
    };
  }

  factory TlsRouteRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteMatchResponse(
      alpn: pulumi.Input.fromValue((map['alpn'] as List).cast<String>()),
      sniHost: pulumi.Input.fromValue((map['sniHost'] as List).cast<String>()),
    );
  }
}

