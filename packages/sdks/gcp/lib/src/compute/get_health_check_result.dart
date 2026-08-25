// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_health_check_grpc_health_check.dart';
import 'get_health_check_grpc_tls_health_check.dart';
import 'get_health_check_http2_health_check.dart';
import 'get_health_check_http_health_check.dart';
import 'get_health_check_https_health_check.dart';
import 'get_health_check_log_config.dart';
import 'get_health_check_ssl_health_check.dart';
import 'get_health_check_tcp_health_check.dart';

/// Result data returned by getHealthCheck.
class GetHealthCheckResult {
  final int? checkIntervalSec;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final List<GetHealthCheckGrpcHealthCheck>? grpcHealthChecks;
  final List<GetHealthCheckGrpcTlsHealthCheck>? grpcTlsHealthChecks;
  final int? healthyThreshold;
  final List<GetHealthCheckHttp2HealthCheck>? http2HealthChecks;
  final List<GetHealthCheckHttpHealthCheck>? httpHealthChecks;
  final List<GetHealthCheckHttpsHealthCheck>? httpsHealthChecks;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetHealthCheckLogConfig>? logConfigs;
  final String? name;
  final String? project;
  final String? selfLink;
  final List<String>? sourceRegions;
  final List<GetHealthCheckSslHealthCheck>? sslHealthChecks;
  final List<GetHealthCheckTcpHealthCheck>? tcpHealthChecks;
  final int? timeoutSec;
  final String? type;
  final int? unhealthyThreshold;

  /// Creates a new [GetHealthCheckResult].
  /// [checkIntervalSec] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [grpcHealthChecks] Optional.
  /// [grpcTlsHealthChecks] Optional.
  /// [healthyThreshold] Optional.
  /// [http2HealthChecks] Optional.
  /// [httpHealthChecks] Optional.
  /// [httpsHealthChecks] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logConfigs] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [selfLink] Optional.
  /// [sourceRegions] Optional.
  /// [sslHealthChecks] Optional.
  /// [tcpHealthChecks] Optional.
  /// [timeoutSec] Optional.
  /// [type] Optional.
  /// [unhealthyThreshold] Optional.
  const GetHealthCheckResult({
    this.checkIntervalSec,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.grpcHealthChecks,
    this.grpcTlsHealthChecks,
    this.healthyThreshold,
    this.http2HealthChecks,
    this.httpHealthChecks,
    this.httpsHealthChecks,
    this.id,
    this.logConfigs,
    this.name,
    this.project,
    this.selfLink,
    this.sourceRegions,
    this.sslHealthChecks,
    this.tcpHealthChecks,
    this.timeoutSec,
    this.type,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'grpcHealthChecks': ?(() { final guardedValue = grpcHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckGrpcHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'grpcTlsHealthChecks': ?(() { final guardedValue = grpcTlsHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthChecks': ?(() { final guardedValue = http2HealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckHttp2HealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpHealthChecks': ?(() { final guardedValue = httpHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckHttpHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpsHealthChecks': ?(() { final guardedValue = httpsHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckHttpsHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'logConfigs': ?(() { final guardedValue = logConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckLogConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'sourceRegions': ?sourceRegions,
      'sslHealthChecks': ?(() { final guardedValue = sslHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckSslHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tcpHealthChecks': ?(() { final guardedValue = tcpHealthChecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHealthCheckTcpHealthCheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeoutSec': ?timeoutSec,
      'type': ?type,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory GetHealthCheckResult.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckResult(
      checkIntervalSec: (() { final guardedValue = map['checkIntervalSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grpcHealthChecks: (() { final guardedValue = map['grpcHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckGrpcHealthCheck>(guardedValue, (value) => GetHealthCheckGrpcHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      grpcTlsHealthChecks: (() { final guardedValue = map['grpcTlsHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckGrpcTlsHealthCheck>(guardedValue, (value) => GetHealthCheckGrpcTlsHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      http2HealthChecks: (() { final guardedValue = map['http2HealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckHttp2HealthCheck>(guardedValue, (value) => GetHealthCheckHttp2HealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpHealthChecks: (() { final guardedValue = map['httpHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckHttpHealthCheck>(guardedValue, (value) => GetHealthCheckHttpHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpsHealthChecks: (() { final guardedValue = map['httpsHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckHttpsHealthCheck>(guardedValue, (value) => GetHealthCheckHttpsHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckLogConfig>(guardedValue, (value) => GetHealthCheckLogConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRegions: (() { final guardedValue = map['sourceRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sslHealthChecks: (() { final guardedValue = map['sslHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckSslHealthCheck>(guardedValue, (value) => GetHealthCheckSslHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      tcpHealthChecks: (() { final guardedValue = map['tcpHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHealthCheckTcpHealthCheck>(guardedValue, (value) => GetHealthCheckTcpHealthCheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
