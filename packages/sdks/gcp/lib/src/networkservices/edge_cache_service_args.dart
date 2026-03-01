// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_log_config.dart';
import 'edge_cache_service_routing.dart';

/// {@template pulumi_networkservices_edge_cache_service_edge_cache_service_args_doc}
/// The set of arguments for EdgeCacheService.
/// {@endtemplate}
/// {@macro pulumi_networkservices_edge_cache_service_edge_cache_service_args_doc}
class EdgeCacheServiceArgs {
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
  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  final pulumi.Input<bool>? requireTls;
  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRouting> routing;
  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [EdgeCacheServiceArgs].
  /// [description] A human-readable description of the resource.
  /// [disableHttp2] Disables HTTP/2.
  /// [disableQuic] HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  /// [edgeSecurityPolicy] Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  /// [edgeSslCertificates] URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// [labels] Set of label tags associated with the EdgeCache resource.
  /// [logConfig] Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [requireTls] Require TLS (HTTPS) for all clients connecting to this service.
  /// [routing] Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// [sslPolicy] URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  EdgeCacheServiceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableHttp2,
    pulumi.Output<bool>? disableQuic,
    pulumi.Output<String>? edgeSecurityPolicy,
    pulumi.Output<List<String>>? edgeSslCertificates,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<EdgeCacheServiceLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? requireTls,
    required pulumi.Output<EdgeCacheServiceRouting> routing,
    pulumi.Output<String>? sslPolicy,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disableHttp2 = pulumi.Input.asOptionalInput<bool>(disableHttp2),
      disableQuic = pulumi.Input.asOptionalInput<bool>(disableQuic),
      edgeSecurityPolicy = pulumi.Input.asOptionalInput<String>(edgeSecurityPolicy),
      edgeSslCertificates = pulumi.Input.asOptionalInput<List<String>>(edgeSslCertificates),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      logConfig = pulumi.Input.asOptionalInput<EdgeCacheServiceLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requireTls = pulumi.Input.asOptionalInput<bool>(requireTls),
      routing = pulumi.Input.asInput<EdgeCacheServiceRouting>(routing),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableHttp2': ?disableHttp2,
      'disableQuic': ?disableQuic,
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'edgeSslCertificates': ?edgeSslCertificates,
      'labels': ?labels,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requireTls': ?requireTls,
      'routing': pulumi.Input.mapInputValue<EdgeCacheServiceRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'sslPolicy': ?sslPolicy,
    };
  }

  factory EdgeCacheServiceArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableHttp2: map['disableHttp2'] == null ? null : pulumi.Output.create<bool>(map['disableHttp2'] as bool),
      disableQuic: map['disableQuic'] == null ? null : pulumi.Output.create<bool>(map['disableQuic'] as bool),
      edgeSecurityPolicy: map['edgeSecurityPolicy'] == null ? null : pulumi.Output.create<String>(map['edgeSecurityPolicy'] as String),
      edgeSslCertificates: map['edgeSslCertificates'] == null ? null : pulumi.Output.create<List<String>>((map['edgeSslCertificates'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<EdgeCacheServiceLogConfig>(EdgeCacheServiceLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requireTls: map['requireTls'] == null ? null : pulumi.Output.create<bool>(map['requireTls'] as bool),
      routing: pulumi.Output.create<EdgeCacheServiceRouting>(EdgeCacheServiceRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<String>(map['sslPolicy'] as String),
    );
  }
}

