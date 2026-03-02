// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_https_proxy_target_https_proxy_args_doc}
/// The set of arguments for TargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_target_https_proxy_target_https_proxy_args_doc}
class TargetHttpsProxyArgs {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// Certificate manager certificates only apply when the load balancing scheme is set to INTERNAL_MANAGED.
  /// For EXTERNAL and EXTERNAL_MANAGED, use certificate_map instead.
  /// sslCertificates and certificateManagerCertificates fields can not be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the self_link `projects/{project}/locations/{location}/certificates/{resourceName}`
  final pulumi.Input<List<String>>? certificateManagerCertificates;
  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field is only supported for EXTERNAL and EXTERNAL_MANAGED load balancing schemes.
  /// For INTERNAL_MANAGED, use certificate_manager_certificates instead.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  final pulumi.Input<String>? certificateMap;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value will be used. For Global
  /// external HTTP(S) load balancer, the default value is 610 seconds, the
  /// minimum allowed value is 5 seconds and the maximum allowed value is 1200
  /// seconds. For cross-region internal HTTP(S) load balancer, the default
  /// value is 600 seconds, the minimum allowed value is 5 seconds, and the
  /// maximum allowed value is 600 seconds. For Global external HTTP(S) load
  /// balancer (classic), this option is not available publicly.
  final pulumi.Input<int>? httpKeepAliveTimeoutSec;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool>? proxyBind;
  /// Specifies the QUIC override policy for this resource. This determines
  /// whether the load balancer will attempt to negotiate QUIC with clients
  /// or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
  /// specified, Google manages whether QUIC is used.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `ENABLE`, `DISABLE`.
  final pulumi.Input<String>? quicOverride;
  /// A URL referring to a networksecurity.ServerTlsPolicy
  /// resource that describes how the proxy should authenticate inbound
  /// traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
  /// attached to globalForwardingRules with the loadBalancingScheme
  /// set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
  /// For details which ServerTlsPolicy resources are accepted with
  /// INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
  /// loadBalancingScheme consult ServerTlsPolicy documentation.
  /// If left blank, communications are not encrypted.
  /// If you remove this field from your configuration at the same time as
  /// deleting or recreating a referenced ServerTlsPolicy resource, you will
  /// receive a resourceInUseByAnotherResource error. Use lifecycle.create_before_destroy
  /// within the ServerTlsPolicy resource to avoid this.
  final pulumi.Input<String>? serverTlsPolicy;
  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  /// sslCertificates and certificateManagerCertificates can not be defined together.
  final pulumi.Input<List<String>>? sslCertificates;
  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;
  /// Specifies whether TLS 1.3 0-RTT Data (“Early Data”) should be accepted for this service.
  /// Early Data allows a TLS resumption handshake to include the initial application payload
  /// (a HTTP request) alongside the handshake, reducing the effective round trips to “zero”.
  /// This applies to TLS 1.3 connections over TCP (HTTP/2) as well as over UDP (QUIC/h3).
  /// Possible values are: `STRICT`, `PERMISSIVE`, `UNRESTRICTED`, `DISABLED`.
  final pulumi.Input<String>? tlsEarlyData;
  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String> urlMap;

  /// Creates a new [TargetHttpsProxyArgs].
  /// [certificateManagerCertificates] URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// [certificateMap] A reference to the CertificateMap resource uri that identifies a certificate map
  /// [description] An optional description of this resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [quicOverride] Specifies the QUIC override policy for this resource. This determines
  /// [serverTlsPolicy] A URL referring to a networksecurity.ServerTlsPolicy
  /// [sslCertificates] URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// [sslPolicy] A reference to the SslPolicy resource that will be associated with
  /// [tlsEarlyData] Specifies whether TLS 1.3 0-RTT Data (“Early Data”) should be accepted for this service.
  /// [urlMap] A reference to the UrlMap resource that defines the mapping from URL
  TargetHttpsProxyArgs({
    this.certificateManagerCertificates,
    this.certificateMap,
    this.description,
    this.httpKeepAliveTimeoutSec,
    this.name,
    this.project,
    this.proxyBind,
    this.quicOverride,
    this.serverTlsPolicy,
    this.sslCertificates,
    this.sslPolicy,
    this.tlsEarlyData,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': ?certificateManagerCertificates,
      'certificateMap': ?certificateMap,
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'quicOverride': ?quicOverride,
      'serverTlsPolicy': ?serverTlsPolicy,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
      'tlsEarlyData': ?tlsEarlyData,
      'urlMap': urlMap,
    };
  }

  factory TargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetHttpsProxyArgs(
      certificateManagerCertificates: map['certificateManagerCertificates'] == null ? null : ((map['certificateManagerCertificates']! as List).cast<String>()).input(),
      certificateMap: map['certificateMap'] == null ? null : (map['certificateMap']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null ? null : (map['httpKeepAliveTimeoutSec']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      proxyBind: map['proxyBind'] == null ? null : (map['proxyBind']! as bool).input(),
      quicOverride: map['quicOverride'] == null ? null : (map['quicOverride']! as String).input(),
      serverTlsPolicy: map['serverTlsPolicy'] == null ? null : (map['serverTlsPolicy']! as String).input(),
      sslCertificates: map['sslCertificates'] == null ? null : ((map['sslCertificates']! as List).cast<String>()).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (map['sslPolicy']! as String).input(),
      tlsEarlyData: map['tlsEarlyData'] == null ? null : (map['tlsEarlyData']! as String).input(),
      urlMap: (map['urlMap'] as String).input(),
    );
  }
}

