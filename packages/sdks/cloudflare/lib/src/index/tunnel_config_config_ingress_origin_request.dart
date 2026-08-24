// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_config_config_ingress_origin_request_access.dart';

class TunnelConfigConfigIngressOriginRequest {
  /// For all L7 requests to this hostname, cloudflared will validate each request's Cf-Access-Jwt-Assertion request header.
  final pulumi.Input<TunnelConfigConfigIngressOriginRequestAccess?>? access;
  /// Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare.
  final pulumi.Input<String?>? caPool;
  /// Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by tlsTimeout.
  final pulumi.Input<int?>? connectTimeout;
  /// Disables chunked transfer encoding. Useful if you are running a WSGI server.
  final pulumi.Input<bool?>? disableChunkedEncoding;
  /// Attempt to connect to origin using HTTP2. Origin must be configured as https.
  final pulumi.Input<bool?>? http2Origin;
  /// Sets the HTTP Host header on requests sent to the local service.
  final pulumi.Input<String?>? httpHostHeader;
  /// Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections.
  final pulumi.Input<int?>? keepAliveConnections;
  /// Timeout after which an idle keepalive connection can be discarded.
  final pulumi.Input<int?>? keepAliveTimeout;
  /// Auto configure the Hostname on the origin server certificate.
  final pulumi.Input<bool?>? matchSnItoHost;
  /// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols.
  final pulumi.Input<bool?>? noHappyEyeballs;
  /// Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted.
  final pulumi.Input<bool?>? noTlsVerify;
  /// Hostname that cloudflared should expect from your origin server certificate.
  final pulumi.Input<String?>? originServerName;
  /// cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Valid options are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
  final pulumi.Input<String?>? proxyType;
  /// The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server.
  final pulumi.Input<int?>? tcpKeepAlive;
  /// Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server.
  final pulumi.Input<int?>? tlsTimeout;

  /// Creates a new [TunnelConfigConfigIngressOriginRequest].
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
  const TunnelConfigConfigIngressOriginRequest({
    this.access,
    this.caPool,
    this.connectTimeout,
    this.disableChunkedEncoding,
    this.http2Origin,
    this.httpHostHeader,
    this.keepAliveConnections,
    this.keepAliveTimeout,
    this.matchSnItoHost,
    this.noHappyEyeballs,
    this.noTlsVerify,
    this.originServerName,
    this.proxyType,
    this.tcpKeepAlive,
    this.tlsTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?pulumi.Input.mapOptionalInputValue<TunnelConfigConfigIngressOriginRequestAccess, Map<String, dynamic>>(access, (value) => value.toMap()),
      'caPool': ?caPool,
      'connectTimeout': ?connectTimeout,
      'disableChunkedEncoding': ?disableChunkedEncoding,
      'http2Origin': ?http2Origin,
      'httpHostHeader': ?httpHostHeader,
      'keepAliveConnections': ?keepAliveConnections,
      'keepAliveTimeout': ?keepAliveTimeout,
      'matchSnItoHost': ?matchSnItoHost,
      'noHappyEyeballs': ?noHappyEyeballs,
      'noTlsVerify': ?noTlsVerify,
      'originServerName': ?originServerName,
      'proxyType': ?proxyType,
      'tcpKeepAlive': ?tcpKeepAlive,
      'tlsTimeout': ?tlsTimeout,
    };
  }

  factory TunnelConfigConfigIngressOriginRequest.fromMap(Map<String, dynamic> map) {
    return TunnelConfigConfigIngressOriginRequest(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TunnelConfigConfigIngressOriginRequestAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      caPool: (() { final guardedValue = map['caPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      disableChunkedEncoding: (() { final guardedValue = map['disableChunkedEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      http2Origin: (() { final guardedValue = map['http2Origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpHostHeader: (() { final guardedValue = map['httpHostHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAliveConnections: (() { final guardedValue = map['keepAliveConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      keepAliveTimeout: (() { final guardedValue = map['keepAliveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      matchSnItoHost: (() { final guardedValue = map['matchSnItoHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noHappyEyeballs: (() { final guardedValue = map['noHappyEyeballs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noTlsVerify: (() { final guardedValue = map['noTlsVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originServerName: (() { final guardedValue = map['originServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyType: (() { final guardedValue = map['proxyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpKeepAlive: (() { final guardedValue = map['tcpKeepAlive']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tlsTimeout: (() { final guardedValue = map['tlsTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
