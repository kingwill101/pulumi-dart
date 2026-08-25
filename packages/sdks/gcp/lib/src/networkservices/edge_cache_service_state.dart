// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_log_config.dart';
import 'edge_cache_service_routing.dart';

/// Input properties used for looking up and filtering EdgeCacheService resources.
class EdgeCacheServiceState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String?>? description;
  /// Disables HTTP/2.
  /// HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.
  /// Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated.
  final pulumi.Input<bool?>? disableHttp2;
  /// HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  final pulumi.Input<bool?>? disableQuic;
  /// Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  final pulumi.Input<String?>? edgeSecurityPolicy;
  /// URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// Note that only "global" certificates with a "scope" of "EDGE_CACHE" can be attached to an EdgeCacheService.
  final pulumi.Input<List<String>?>? edgeSslCertificates;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The IPv4 addresses associated with this service. Addresses are static for the lifetime of the service.
  final pulumi.Input<List<String>?>? ipv4Addresses;
  /// The IPv6 addresses associated with this service. Addresses are static for the lifetime of the service.
  final pulumi.Input<List<String>?>? ipv6Addresses;
  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceLogConfig?>? logConfig;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  final pulumi.Input<bool?>? requireTls;
  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRouting?>? routing;
  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  final pulumi.Input<String?>? sslPolicy;

  /// Creates a new [EdgeCacheServiceState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const EdgeCacheServiceState({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableHttp2: (() { final guardedValue = map['disableHttp2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableQuic: (() { final guardedValue = map['disableQuic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edgeSecurityPolicy: (() { final guardedValue = map['edgeSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeSslCertificates: (() { final guardedValue = map['edgeSslCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requireTls: (() { final guardedValue = map['requireTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheServiceRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
