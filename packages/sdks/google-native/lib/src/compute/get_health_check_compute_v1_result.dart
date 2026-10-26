// ignore_for_file: unused_element, unnecessary_cast

import 'grpchealth_check_response_compute_v1.dart';
import 'health_check_log_config_response_compute_v1.dart';
import 'http2_health_check_response_compute_v1.dart';
import 'httphealth_check_response_compute_v1.dart';
import 'httpshealth_check_response_compute_v1.dart';
import 'sslhealth_check_response_compute_v1.dart';
import 'tcphealth_check_response_compute_v1.dart';

/// Result data returned by getHealthCheck.
class GetHealthCheckComputeV1Result {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int? checkIntervalSec;
  /// Creation timestamp in 3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  final GRPCHealthCheckResponseComputeV1? grpcHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int? healthyThreshold;
  final HTTP2HealthCheckResponseComputeV1? http2HealthCheck;
  final HTTPHealthCheckResponseComputeV1? httpHealthCheck;
  final HTTPSHealthCheckResponseComputeV1? httpsHealthCheck;
  /// Type of the resource.
  final String? kind;
  /// Configure logging on this health check.
  final HealthCheckLogConfigResponseComputeV1? logConfig;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final String? name;
  /// Region where the health check resides. Not applicable to global health checks.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  final SSLHealthCheckResponseComputeV1? sslHealthCheck;
  final TCPHealthCheckResponseComputeV1? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final int? timeoutSec;
  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final String? type;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int? unhealthyThreshold;

  /// Creates a new [GetHealthCheckComputeV1Result].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [creationTimestamp] Creation timestamp in 3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcHealthCheck] Optional.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [http2HealthCheck] Optional.
  /// [httpHealthCheck] Optional.
  /// [httpsHealthCheck] Optional.
  /// [kind] Type of the resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  /// [region] Region where the health check resides. Not applicable to global health checks.
  /// [selfLink] Server-defined URL for the resource.
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  const GetHealthCheckComputeV1Result({
    this.checkIntervalSec,
    this.creationTimestamp,
    this.description,
    this.grpcHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.kind,
    this.logConfig,
    this.name,
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
      'grpcHealthCheck': ?grpcHealthCheck?.toMap(),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?http2HealthCheck?.toMap(),
      'httpHealthCheck': ?httpHealthCheck?.toMap(),
      'httpsHealthCheck': ?httpsHealthCheck?.toMap(),
      'kind': ?kind,
      'logConfig': ?logConfig?.toMap(),
      'name': ?name,
      'region': ?region,
      'selfLink': ?selfLink,
      'sslHealthCheck': ?sslHealthCheck?.toMap(),
      'tcpHealthCheck': ?tcpHealthCheck?.toMap(),
      'timeoutSec': ?timeoutSec,
      'type': ?type,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory GetHealthCheckComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeV1Result(
      checkIntervalSec: (() { final guardedValue = map['checkIntervalSec']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grpcHealthCheck: (() { final guardedValue = map['grpcHealthCheck']; if (guardedValue == null) return null; return GRPCHealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      http2HealthCheck: (() { final guardedValue = map['http2HealthCheck']; if (guardedValue == null) return null; return HTTP2HealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpHealthCheck: (() { final guardedValue = map['httpHealthCheck']; if (guardedValue == null) return null; return HTTPHealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpsHealthCheck: (() { final guardedValue = map['httpsHealthCheck']; if (guardedValue == null) return null; return HTTPSHealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return HealthCheckLogConfigResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslHealthCheck: (() { final guardedValue = map['sslHealthCheck']; if (guardedValue == null) return null; return SSLHealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tcpHealthCheck: (() { final guardedValue = map['tcpHealthCheck']; if (guardedValue == null) return null; return TCPHealthCheckResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
