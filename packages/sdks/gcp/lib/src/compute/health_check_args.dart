// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_check_grpc_health_check.dart';
import 'health_check_grpc_tls_health_check.dart';
import 'health_check_http2_health_check.dart';
import 'health_check_http_health_check.dart';
import 'health_check_https_health_check.dart';
import 'health_check_log_config.dart';
import 'health_check_ssl_health_check.dart';
import 'health_check_tcp_health_check.dart';

/// {@template pulumi_compute_health_check_health_check_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_health_check_health_check_args_doc}
class HealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckGrpcHealthCheck>? grpcHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttp2HealthCheck>? http2HealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttpHealthCheck>? httpHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttpsHealthCheck>? httpsHealthCheck;
  /// Configure logging on this health check.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckLogConfig>? logConfig;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The list of cloud regions from which health checks are performed. If
  /// any regions are specified, then exactly 3 regions should be specified.
  /// The region names must be valid names of Google Cloud regions. This can
  /// only be set for global health check. If this list is non-empty, then
  /// there are restrictions on what other health check fields are supported
  /// and what other resources can use this health check:
  /// * SSL, HTTP2, and GRPC protocols are not supported.
  /// * The TCP request field is not supported.
  /// * The proxyHeader field for HTTP, HTTPS, and TCP is not supported.
  /// * The checkIntervalSec field must be at least 30.
  /// * The health check cannot be used with BackendService nor with managed
  /// instance group auto-healing.
  final pulumi.Input<List<String>>? sourceRegions;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckSslHealthCheck>? sslHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckTcpHealthCheck>? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckArgs].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5
  /// [description] An optional description of this resource. Provide this property when
  /// [grpcHealthCheck] A nested object resource.
  /// [grpcTlsHealthCheck] A nested object resource.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many
  /// [http2HealthCheck] A nested object resource.
  /// [httpHealthCheck] A nested object resource.
  /// [httpsHealthCheck] A nested object resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceRegions] The list of cloud regions from which health checks are performed. If
  /// [sslHealthCheck] A nested object resource.
  /// [tcpHealthCheck] A nested object resource.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many
  HealthCheckArgs({
    this.checkIntervalSec,
    this.description,
    this.grpcHealthCheck,
    this.grpcTlsHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.logConfig,
    this.name,
    this.project,
    this.sourceRegions,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'description': ?description,
      'grpcHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckGrpcHealthCheck, Map<String, dynamic>>(grpcHealthCheck, (value) => value.toMap()),
      'grpcTlsHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(grpcTlsHealthCheck, (value) => value.toMap()),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckHttp2HealthCheck, Map<String, dynamic>>(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckHttpHealthCheck, Map<String, dynamic>>(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckHttpsHealthCheck, Map<String, dynamic>>(httpsHealthCheck, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<HealthCheckLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'sourceRegions': ?sourceRegions,
      'sslHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckSslHealthCheck, Map<String, dynamic>>(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck': ?pulumi.Input.mapOptionalInputValue<HealthCheckTcpHealthCheck, Map<String, dynamic>>(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      checkIntervalSec: map['checkIntervalSec'] == null ? null : (map['checkIntervalSec']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      grpcHealthCheck: map['grpcHealthCheck'] == null ? null : (HealthCheckGrpcHealthCheck.fromMap((map['grpcHealthCheck']! as Map).cast<String, dynamic>())).input(),
      grpcTlsHealthCheck: map['grpcTlsHealthCheck'] == null ? null : (HealthCheckGrpcTlsHealthCheck.fromMap((map['grpcTlsHealthCheck']! as Map).cast<String, dynamic>())).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold']! as int).input(),
      http2HealthCheck: map['http2HealthCheck'] == null ? null : (HealthCheckHttp2HealthCheck.fromMap((map['http2HealthCheck']! as Map).cast<String, dynamic>())).input(),
      httpHealthCheck: map['httpHealthCheck'] == null ? null : (HealthCheckHttpHealthCheck.fromMap((map['httpHealthCheck']! as Map).cast<String, dynamic>())).input(),
      httpsHealthCheck: map['httpsHealthCheck'] == null ? null : (HealthCheckHttpsHealthCheck.fromMap((map['httpsHealthCheck']! as Map).cast<String, dynamic>())).input(),
      logConfig: map['logConfig'] == null ? null : (HealthCheckLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sourceRegions: map['sourceRegions'] == null ? null : ((map['sourceRegions']! as List).cast<String>()).input(),
      sslHealthCheck: map['sslHealthCheck'] == null ? null : (HealthCheckSslHealthCheck.fromMap((map['sslHealthCheck']! as Map).cast<String, dynamic>())).input(),
      tcpHealthCheck: map['tcpHealthCheck'] == null ? null : (HealthCheckTcpHealthCheck.fromMap((map['tcpHealthCheck']! as Map).cast<String, dynamic>())).input(),
      timeoutSec: map['timeoutSec'] == null ? null : (map['timeoutSec']! as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

