// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_log_config.dart';
import 'edge_cache_service_routing.dart';

/// Input properties used for looking up and filtering EdgeCacheService resources.
class EdgeCacheServiceState {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// Disables HTTP/2.
  /// HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.
  /// Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated.
  final pulumi.Input<bool>? disableHttp2;
  /// HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  final pulumi.Input<bool>? disableQuic;
  /// Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  final pulumi.Input<String>? edgeSecurityPolicy;
  /// URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// Note that only "global" certificates with a "scope" of "EDGE_CACHE" can be attached to an EdgeCacheService.
  final pulumi.Input<List<String>>? edgeSslCertificates;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The IPv4 addresses associated with this service. Addresses are static for the lifetime of the service.
  final pulumi.Input<List<String>>? ipv4Addresses;
  /// The IPv6 addresses associated with this service. Addresses are static for the lifetime of the service.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceLogConfig>? logConfig;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  final pulumi.Input<bool>? requireTls;
  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRouting>? routing;
  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [EdgeCacheServiceState].
  /// [description] A human-readable description of the resource.
  /// [disableHttp2] Disables HTTP/2.
  /// [disableQuic] HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  /// [edgeSecurityPolicy] Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  /// [edgeSslCertificates] URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipv4Addresses] The IPv4 addresses associated with this service. Addresses are static for the lifetime of the service.
  /// [ipv6Addresses] The IPv6 addresses associated with this service. Addresses are static for the lifetime of the service.
  /// [labels] Set of label tags associated with the EdgeCache resource.
  /// [logConfig] Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [requireTls] Require TLS (HTTPS) for all clients connecting to this service.
  /// [routing] Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// [sslPolicy] URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  EdgeCacheServiceState({
    this.description,
    this.disableHttp2,
    this.disableQuic,
    this.edgeSecurityPolicy,
    this.edgeSslCertificates,
    this.effectiveLabels,
    this.ipv4Addresses,
    this.ipv6Addresses,
    this.labels,
    this.logConfig,
    this.name,
    this.project,
    this.pulumiLabels,
    this.requireTls,
    this.routing,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableHttp2': ?disableHttp2,
      'disableQuic': ?disableQuic,
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'edgeSslCertificates': ?edgeSslCertificates,
      'effectiveLabels': ?effectiveLabels,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
      'labels': ?labels,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'requireTls': ?requireTls,
      'routing': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'sslPolicy': ?sslPolicy,
    };
  }

  factory EdgeCacheServiceState.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableHttp2: map['disableHttp2'] == null ? null : (map['disableHttp2']! as bool).input(),
      disableQuic: map['disableQuic'] == null ? null : (map['disableQuic']! as bool).input(),
      edgeSecurityPolicy: map['edgeSecurityPolicy'] == null ? null : (map['edgeSecurityPolicy']! as String).input(),
      edgeSslCertificates: map['edgeSslCertificates'] == null ? null : ((map['edgeSslCertificates']! as List).cast<String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      ipv4Addresses: map['ipv4Addresses'] == null ? null : ((map['ipv4Addresses']! as List).cast<String>()).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : ((map['ipv6Addresses']! as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      logConfig: map['logConfig'] == null ? null : (EdgeCacheServiceLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      requireTls: map['requireTls'] == null ? null : (map['requireTls']! as bool).input(),
      routing: map['routing'] == null ? null : (EdgeCacheServiceRouting.fromMap((map['routing']! as Map).cast<String, dynamic>())).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (map['sslPolicy']! as String).input(),
    );
  }
}

