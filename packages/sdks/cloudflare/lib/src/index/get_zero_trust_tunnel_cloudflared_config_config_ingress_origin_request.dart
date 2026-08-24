// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_config_config_ingress_origin_request_access.dart';

class GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest {
  /// For all L7 requests to this hostname, cloudflared will validate each request's Cf-Access-Jwt-Assertion request header.
  final pulumi.Input<GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess> access;
  /// Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare.
  final pulumi.Input<String> caPool;
  /// Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by tlsTimeout.
  final pulumi.Input<int> connectTimeout;
  /// Disables chunked transfer encoding. Useful if you are running a WSGI server.
  final pulumi.Input<bool> disableChunkedEncoding;
  /// Attempt to connect to origin using HTTP2. Origin must be configured as https.
  final pulumi.Input<bool> http2Origin;
  /// Sets the HTTP Host header on requests sent to the local service.
  final pulumi.Input<String> httpHostHeader;
  /// Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections.
  final pulumi.Input<int> keepAliveConnections;
  /// Timeout after which an idle keepalive connection can be discarded.
  final pulumi.Input<int> keepAliveTimeout;
  /// Auto configure the Hostname on the origin server certificate.
  final pulumi.Input<bool> matchSnItoHost;
  /// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols.
  final pulumi.Input<bool> noHappyEyeballs;
  /// Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted.
  final pulumi.Input<bool> noTlsVerify;
  /// Hostname that cloudflared should expect from your origin server certificate.
  final pulumi.Input<String> originServerName;
  /// cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Valid options are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
  final pulumi.Input<String> proxyType;
  /// The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server.
  final pulumi.Input<int> tcpKeepAlive;
  /// Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server.
  final pulumi.Input<int> tlsTimeout;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest].
  /// [access] For all L7 requests to this hostname, cloudflared will validate each request's Cf-Access-Jwt-Assertion request header.
  /// [caPool] Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare.
  /// [connectTimeout] Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by tlsTimeout.
  /// [disableChunkedEncoding] Disables chunked transfer encoding. Useful if you are running a WSGI server.
  /// [http2Origin] Attempt to connect to origin using HTTP2. Origin must be configured as https.
  /// [httpHostHeader] Sets the HTTP Host header on requests sent to the local service.
  /// [keepAliveConnections] Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections.
  /// [keepAliveTimeout] Timeout after which an idle keepalive connection can be discarded.
  /// [matchSnItoHost] Auto configure the Hostname on the origin server certificate.
  /// [noHappyEyeballs] Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols.
  /// [noTlsVerify] Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted.
  /// [originServerName] Hostname that cloudflared should expect from your origin server certificate.
  /// [proxyType] cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Valid options are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
  /// [tcpKeepAlive] The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server.
  /// [tlsTimeout] Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server.
  const GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest({
    required this.access,
    required this.caPool,
    required this.connectTimeout,
    required this.disableChunkedEncoding,
    required this.http2Origin,
    required this.httpHostHeader,
    required this.keepAliveConnections,
    required this.keepAliveTimeout,
    required this.matchSnItoHost,
    required this.noHappyEyeballs,
    required this.noTlsVerify,
    required this.originServerName,
    required this.proxyType,
    required this.tcpKeepAlive,
    required this.tlsTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': pulumi.Input.mapInputValue<GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess, Map<String, dynamic>>(access, (value) => value.toMap()),
      'caPool': caPool,
      'connectTimeout': connectTimeout,
      'disableChunkedEncoding': disableChunkedEncoding,
      'http2Origin': http2Origin,
      'httpHostHeader': httpHostHeader,
      'keepAliveConnections': keepAliveConnections,
      'keepAliveTimeout': keepAliveTimeout,
      'matchSnItoHost': matchSnItoHost,
      'noHappyEyeballs': noHappyEyeballs,
      'noTlsVerify': noTlsVerify,
      'originServerName': originServerName,
      'proxyType': proxyType,
      'tcpKeepAlive': tcpKeepAlive,
      'tlsTimeout': tlsTimeout,
    };
  }

  factory GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequest(
      access: pulumi.Input.fromValue(GetZeroTrustTunnelCloudflaredConfigConfigIngressOriginRequestAccess.fromMap((map['access']! as Map).cast<String, dynamic>())),
      caPool: pulumi.Input.fromValue(map['caPool'] as String),
      connectTimeout: pulumi.Input.fromValue((map['connectTimeout'] as num).toInt()),
      disableChunkedEncoding: pulumi.Input.fromValue(map['disableChunkedEncoding'] as bool),
      http2Origin: pulumi.Input.fromValue(map['http2Origin'] as bool),
      httpHostHeader: pulumi.Input.fromValue(map['httpHostHeader'] as String),
      keepAliveConnections: pulumi.Input.fromValue((map['keepAliveConnections'] as num).toInt()),
      keepAliveTimeout: pulumi.Input.fromValue((map['keepAliveTimeout'] as num).toInt()),
      matchSnItoHost: pulumi.Input.fromValue(map['matchSnItoHost'] as bool),
      noHappyEyeballs: pulumi.Input.fromValue(map['noHappyEyeballs'] as bool),
      noTlsVerify: pulumi.Input.fromValue(map['noTlsVerify'] as bool),
      originServerName: pulumi.Input.fromValue(map['originServerName'] as String),
      proxyType: pulumi.Input.fromValue(map['proxyType'] as String),
      tcpKeepAlive: pulumi.Input.fromValue((map['tcpKeepAlive'] as num).toInt()),
      tlsTimeout: pulumi.Input.fromValue((map['tlsTimeout'] as num).toInt()),
    );
  }
}
