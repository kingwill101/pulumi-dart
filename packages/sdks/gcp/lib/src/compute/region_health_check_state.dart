// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_health_check_grpc_health_check.dart';
import 'region_health_check_grpc_tls_health_check.dart';
import 'region_health_check_http2_health_check.dart';
import 'region_health_check_http_health_check.dart';
import 'region_health_check_https_health_check.dart';
import 'region_health_check_log_config.dart';
import 'region_health_check_ssl_health_check.dart';
import 'region_health_check_tcp_health_check.dart';

/// Input properties used for looking up and filtering RegionHealthCheck resources.
class RegionHealthCheckState {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckGrpcHealthCheck>? grpcHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? healthCheckId;
  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckHttp2HealthCheck>? http2HealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckHttpHealthCheck>? httpHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckHttpsHealthCheck>? httpsHealthCheck;
  /// Configure logging on this health check.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckLogConfig>? logConfig;
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
  /// The Region in which the created health check should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckSslHealthCheck>? sslHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckTcpHealthCheck>? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// The type of the health check. One of HTTP, HTTP2, HTTPS, TCP, or SSL.
  final pulumi.Input<String>? type;
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [RegionHealthCheckState].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [grpcHealthCheck] A nested object resource.
  /// [grpcTlsHealthCheck] A nested object resource.
  /// [healthCheckId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many
  /// [http2HealthCheck] A nested object resource.
  /// [httpHealthCheck] A nested object resource.
  /// [httpsHealthCheck] A nested object resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created health check should reside.
  /// [selfLink] The URI of the created resource.
  /// [sslHealthCheck] A nested object resource.
  /// [tcpHealthCheck] A nested object resource.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure.
  /// [type] The type of the health check. One of HTTP, HTTP2, HTTPS, TCP, or SSL.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many
  RegionHealthCheckState({
    this.checkIntervalSec,
    this.creationTimestamp,
    this.description,
    this.grpcHealthCheck,
    this.grpcTlsHealthCheck,
    this.healthCheckId,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.logConfig,
    this.name,
    this.project,
    this.region,
    this.selfLink,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.type,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'grpcHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckGrpcHealthCheck, Map<String, dynamic>>(grpcHealthCheck, (value) => value.toMap()),
      'grpcTlsHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(grpcTlsHealthCheck, (value) => value.toMap()),
      'healthCheckId': ?healthCheckId,
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttp2HealthCheck, Map<String, dynamic>>(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttpHealthCheck, Map<String, dynamic>>(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttpsHealthCheck, Map<String, dynamic>>(httpsHealthCheck, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'sslHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckSslHealthCheck, Map<String, dynamic>>(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckTcpHealthCheck, Map<String, dynamic>>(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'type': ?type,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory RegionHealthCheckState.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckState(
      checkIntervalSec: map['checkIntervalSec'] == null ? null : (map['checkIntervalSec'] as int).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      grpcHealthCheck: map['grpcHealthCheck'] == null ? null : (RegionHealthCheckGrpcHealthCheck.fromMap((map['grpcHealthCheck'] as Map).cast<String, dynamic>())).input(),
      grpcTlsHealthCheck: map['grpcTlsHealthCheck'] == null ? null : (RegionHealthCheckGrpcTlsHealthCheck.fromMap((map['grpcTlsHealthCheck'] as Map).cast<String, dynamic>())).input(),
      healthCheckId: map['healthCheckId'] == null ? null : (map['healthCheckId'] as int).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      http2HealthCheck: map['http2HealthCheck'] == null ? null : (RegionHealthCheckHttp2HealthCheck.fromMap((map['http2HealthCheck'] as Map).cast<String, dynamic>())).input(),
      httpHealthCheck: map['httpHealthCheck'] == null ? null : (RegionHealthCheckHttpHealthCheck.fromMap((map['httpHealthCheck'] as Map).cast<String, dynamic>())).input(),
      httpsHealthCheck: map['httpsHealthCheck'] == null ? null : (RegionHealthCheckHttpsHealthCheck.fromMap((map['httpsHealthCheck'] as Map).cast<String, dynamic>())).input(),
      logConfig: map['logConfig'] == null ? null : (RegionHealthCheckLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      sslHealthCheck: map['sslHealthCheck'] == null ? null : (RegionHealthCheckSslHealthCheck.fromMap((map['sslHealthCheck'] as Map).cast<String, dynamic>())).input(),
      tcpHealthCheck: map['tcpHealthCheck'] == null ? null : (RegionHealthCheckTcpHealthCheck.fromMap((map['tcpHealthCheck'] as Map).cast<String, dynamic>())).input(),
      timeoutSec: map['timeoutSec'] == null ? null : (map['timeoutSec'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold'] as int).input(),
    );
  }
}

