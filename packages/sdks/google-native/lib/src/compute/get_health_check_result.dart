// ignore_for_file: unused_element, unnecessary_cast

import 'grpchealth_check_response.dart';
import 'health_check_log_config_response.dart';
import 'http2_health_check_response.dart';
import 'httphealth_check_response.dart';
import 'httpshealth_check_response.dart';
import 'sslhealth_check_response.dart';
import 'tcphealth_check_response.dart';
import 'udphealth_check_response.dart';

/// Result data returned by getHealthCheck.
class GetHealthCheckResult {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int? checkIntervalSec;
  /// Creation timestamp in 3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  final GRPCHealthCheckResponse? grpcHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int? healthyThreshold;
  final HTTP2HealthCheckResponse? http2HealthCheck;
  final HTTPHealthCheckResponse? httpHealthCheck;
  final HTTPSHealthCheckResponse? httpsHealthCheck;
  /// Type of the resource.
  final String? kind;
  /// Configure logging on this health check.
  final HealthCheckLogConfigResponse? logConfig;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final String? name;
  /// Region where the health check resides. Not applicable to global health checks.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  final List<String>? sourceRegions;
  final SSLHealthCheckResponse? sslHealthCheck;
  final TCPHealthCheckResponse? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final int? timeoutSec;
  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final String? type;
  final UDPHealthCheckResponse? udpHealthCheck;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int? unhealthyThreshold;

  /// Creates a new [GetHealthCheckResult].
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
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [sourceRegions] The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [udpHealthCheck] Optional.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  const GetHealthCheckResult({
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
    this.selfLinkWithId,
    this.sourceRegions,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.type,
    this.udpHealthCheck,
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
      'selfLinkWithId': ?selfLinkWithId,
      'sourceRegions': ?sourceRegions,
      'sslHealthCheck': ?sslHealthCheck?.toMap(),
      'tcpHealthCheck': ?tcpHealthCheck?.toMap(),
      'timeoutSec': ?timeoutSec,
      'type': ?type,
      'udpHealthCheck': ?udpHealthCheck?.toMap(),
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory GetHealthCheckResult.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckResult(
      checkIntervalSec: (() { final guardedValue = map['checkIntervalSec']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grpcHealthCheck: (() { final guardedValue = map['grpcHealthCheck']; if (guardedValue == null) return null; return GRPCHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      http2HealthCheck: (() { final guardedValue = map['http2HealthCheck']; if (guardedValue == null) return null; return HTTP2HealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpHealthCheck: (() { final guardedValue = map['httpHealthCheck']; if (guardedValue == null) return null; return HTTPHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpsHealthCheck: (() { final guardedValue = map['httpsHealthCheck']; if (guardedValue == null) return null; return HTTPSHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return HealthCheckLogConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRegions: (() { final guardedValue = map['sourceRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sslHealthCheck: (() { final guardedValue = map['sslHealthCheck']; if (guardedValue == null) return null; return SSLHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tcpHealthCheck: (() { final guardedValue = map['tcpHealthCheck']; if (guardedValue == null) return null; return TCPHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      udpHealthCheck: (() { final guardedValue = map['udpHealthCheck']; if (guardedValue == null) return null; return UDPHealthCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
