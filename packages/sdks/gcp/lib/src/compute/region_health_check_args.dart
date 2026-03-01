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

/// {@template pulumi_compute_region_health_check_region_health_check_args_doc}
/// The set of arguments for RegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_region_health_check_region_health_check_args_doc}
class RegionHealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckGrpcHealthCheck>? grpcHealthCheck;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionHealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck;
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
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [RegionHealthCheckArgs].
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
  /// [region] The Region in which the created health check should reside.
  /// [sslHealthCheck] A nested object resource.
  /// [tcpHealthCheck] A nested object resource.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many
  RegionHealthCheckArgs({
    pulumi.Output<int>? checkIntervalSec,
    pulumi.Output<String>? description,
    pulumi.Output<RegionHealthCheckGrpcHealthCheck>? grpcHealthCheck,
    pulumi.Output<RegionHealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck,
    pulumi.Output<int>? healthyThreshold,
    pulumi.Output<RegionHealthCheckHttp2HealthCheck>? http2HealthCheck,
    pulumi.Output<RegionHealthCheckHttpHealthCheck>? httpHealthCheck,
    pulumi.Output<RegionHealthCheckHttpsHealthCheck>? httpsHealthCheck,
    pulumi.Output<RegionHealthCheckLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<RegionHealthCheckSslHealthCheck>? sslHealthCheck,
    pulumi.Output<RegionHealthCheckTcpHealthCheck>? tcpHealthCheck,
    pulumi.Output<int>? timeoutSec,
    pulumi.Output<int>? unhealthyThreshold,
  }) :
      checkIntervalSec = pulumi.Input.asOptionalInput<int>(checkIntervalSec),
      description = pulumi.Input.asOptionalInput<String>(description),
      grpcHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckGrpcHealthCheck>(grpcHealthCheck),
      grpcTlsHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckGrpcTlsHealthCheck>(grpcTlsHealthCheck),
      healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
      http2HealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckHttp2HealthCheck>(http2HealthCheck),
      httpHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckHttpHealthCheck>(httpHealthCheck),
      httpsHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckHttpsHealthCheck>(httpsHealthCheck),
      logConfig = pulumi.Input.asOptionalInput<RegionHealthCheckLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      sslHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckSslHealthCheck>(sslHealthCheck),
      tcpHealthCheck = pulumi.Input.asOptionalInput<RegionHealthCheckTcpHealthCheck>(tcpHealthCheck),
      timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
      unhealthyThreshold = pulumi.Input.asOptionalInput<int>(unhealthyThreshold);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'description': ?description,
      'grpcHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckGrpcHealthCheck, Map<String, dynamic>>(grpcHealthCheck, (value) => value.toMap()),
      'grpcTlsHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(grpcTlsHealthCheck, (value) => value.toMap()),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttp2HealthCheck, Map<String, dynamic>>(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttpHealthCheck, Map<String, dynamic>>(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckHttpsHealthCheck, Map<String, dynamic>>(httpsHealthCheck, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'sslHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckSslHealthCheck, Map<String, dynamic>>(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckTcpHealthCheck, Map<String, dynamic>>(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory RegionHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckArgs(
      checkIntervalSec: map['checkIntervalSec'] == null ? null : pulumi.Output.create<int>(map['checkIntervalSec'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      grpcHealthCheck: map['grpcHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckGrpcHealthCheck>(RegionHealthCheckGrpcHealthCheck.fromMap((map['grpcHealthCheck'] as Map).cast<String, dynamic>())),
      grpcTlsHealthCheck: map['grpcTlsHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckGrpcTlsHealthCheck>(RegionHealthCheckGrpcTlsHealthCheck.fromMap((map['grpcTlsHealthCheck'] as Map).cast<String, dynamic>())),
      healthyThreshold: map['healthyThreshold'] == null ? null : pulumi.Output.create<int>(map['healthyThreshold'] as int),
      http2HealthCheck: map['http2HealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckHttp2HealthCheck>(RegionHealthCheckHttp2HealthCheck.fromMap((map['http2HealthCheck'] as Map).cast<String, dynamic>())),
      httpHealthCheck: map['httpHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckHttpHealthCheck>(RegionHealthCheckHttpHealthCheck.fromMap((map['httpHealthCheck'] as Map).cast<String, dynamic>())),
      httpsHealthCheck: map['httpsHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckHttpsHealthCheck>(RegionHealthCheckHttpsHealthCheck.fromMap((map['httpsHealthCheck'] as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<RegionHealthCheckLogConfig>(RegionHealthCheckLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sslHealthCheck: map['sslHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckSslHealthCheck>(RegionHealthCheckSslHealthCheck.fromMap((map['sslHealthCheck'] as Map).cast<String, dynamic>())),
      tcpHealthCheck: map['tcpHealthCheck'] == null ? null : pulumi.Output.create<RegionHealthCheckTcpHealthCheck>(RegionHealthCheckTcpHealthCheck.fromMap((map['tcpHealthCheck'] as Map).cast<String, dynamic>())),
      timeoutSec: map['timeoutSec'] == null ? null : pulumi.Output.create<int>(map['timeoutSec'] as int),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : pulumi.Output.create<int>(map['unhealthyThreshold'] as int),
    );
  }
}

