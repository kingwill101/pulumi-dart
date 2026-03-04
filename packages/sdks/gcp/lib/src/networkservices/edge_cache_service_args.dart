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
    this.description,
    this.disableHttp2,
    this.disableQuic,
    this.edgeSecurityPolicy,
    this.edgeSslCertificates,
    this.labels,
    this.logConfig,
    this.name,
    this.project,
    this.requireTls,
    required this.routing,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableHttp2': ?disableHttp2,
      'disableQuic': ?disableQuic,
      'edgeSecurityPolicy': ?edgeSecurityPolicy,
      'edgeSslCertificates': ?edgeSslCertificates,
      'labels': ?labels,
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeCacheServiceLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requireTls': ?requireTls,
      'routing':
          pulumi.Input.mapInputValue<
            EdgeCacheServiceRouting,
            Map<String, dynamic>
          >(routing, (value) => value.toMap()),
      'sslPolicy': ?sslPolicy,
    };
  }

  factory EdgeCacheServiceArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableHttp2: (() {
        final guardedValue = map['disableHttp2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableQuic: (() {
        final guardedValue = map['disableQuic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      edgeSecurityPolicy: (() {
        final guardedValue = map['edgeSecurityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeSslCertificates: (() {
        final guardedValue = map['edgeSslCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      logConfig: (() {
        final guardedValue = map['logConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeCacheServiceLogConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requireTls: (() {
        final guardedValue = map['requireTls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      routing: pulumi.Input.fromValue(
        EdgeCacheServiceRouting.fromMap(
          (map['routing']! as Map).cast<String, dynamic>(),
        ),
      ),
      sslPolicy: (() {
        final guardedValue = map['sslPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
