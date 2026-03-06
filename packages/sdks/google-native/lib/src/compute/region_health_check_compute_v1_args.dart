// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check_compute_v1.dart';
import 'health_check_log_config_compute_v1.dart';
import 'http2_health_check_compute_v1.dart';
import 'httphealth_check_compute_v1.dart';
import 'httpshealth_check_compute_v1.dart';
import 'region_health_check_type_compute_v1.dart';
import 'sslhealth_check_compute_v1.dart';
import 'tcphealth_check_compute_v1.dart';

/// {@template pulumi_compute_v1_region_health_check_compute_v1_args_doc}
/// The set of arguments for RegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_health_check_compute_v1_args_doc}
class RegionHealthCheckComputeV1Args {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<GRPCHealthCheckComputeV1>? grpcHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<HTTP2HealthCheckComputeV1>? http2HealthCheck;
  final pulumi.Input<HTTPHealthCheckComputeV1>? httpHealthCheck;
  final pulumi.Input<HTTPSHealthCheckComputeV1>? httpsHealthCheck;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// Configure logging on this health check.
  final pulumi.Input<HealthCheckLogConfigComputeV1>? logConfig;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<SSLHealthCheckComputeV1>? sslHealthCheck;
  final pulumi.Input<TCPHealthCheckComputeV1>? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final pulumi.Input<RegionHealthCheckTypeComputeV1>? type;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [RegionHealthCheckComputeV1Args].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcHealthCheck] Optional.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [http2HealthCheck] Optional.
  /// [httpHealthCheck] Optional.
  /// [httpsHealthCheck] Optional.
  /// [kind] Type of the resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  const RegionHealthCheckComputeV1Args({
    this.checkIntervalSec,
    this.description,
    this.grpcHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.kind,
    this.logConfig,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.type,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'description': ?description,
      'grpcHealthCheck': ?pulumi.Input.mapOptionalInputValue<GRPCHealthCheckComputeV1, Map<String, dynamic>>(grpcHealthCheck, (value) => value.toMap()),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTP2HealthCheckComputeV1, Map<String, dynamic>>(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTPHealthCheckComputeV1, Map<String, dynamic>>(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTPSHealthCheckComputeV1, Map<String, dynamic>>(httpsHealthCheck, (value) => value.toMap()),
      'kind': ?kind,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<HealthCheckLogConfigComputeV1, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'sslHealthCheck': ?pulumi.Input.mapOptionalInputValue<SSLHealthCheckComputeV1, Map<String, dynamic>>(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck': ?pulumi.Input.mapOptionalInputValue<TCPHealthCheckComputeV1, Map<String, dynamic>>(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'type': ?pulumi.Input.mapOptionalInputValue<RegionHealthCheckTypeComputeV1, String>(type, (value) => value.wireValue),
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory RegionHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckComputeV1Args(
      checkIntervalSec: (() { final guardedValue = map['checkIntervalSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grpcHealthCheck: (() { final guardedValue = map['grpcHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GRPCHealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      http2HealthCheck: (() { final guardedValue = map['http2HealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTP2HealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpHealthCheck: (() { final guardedValue = map['httpHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPHealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsHealthCheck: (() { final guardedValue = map['httpsHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPSHealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthCheckLogConfigComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslHealthCheck: (() { final guardedValue = map['sslHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSLHealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpHealthCheck: (() { final guardedValue = map['tcpHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TCPHealthCheckComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionHealthCheckTypeComputeV1.fromValue(guardedValue as String)); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

