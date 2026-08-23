// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check.dart';
import 'health_check_log_config.dart';
import 'health_check_type.dart';
import 'http2_health_check.dart';
import 'httphealth_check.dart';
import 'httpshealth_check.dart';
import 'sslhealth_check.dart';
import 'tcphealth_check.dart';
import 'udphealth_check.dart';

/// {@template pulumi_compute_alpha_health_check_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_health_check_args_doc}
class HealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<GRPCHealthCheck>? grpcHealthCheck;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<HTTP2HealthCheck>? http2HealthCheck;
  final pulumi.Input<HTTPHealthCheck>? httpHealthCheck;
  final pulumi.Input<HTTPSHealthCheck>? httpsHealthCheck;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// Configure logging on this health check.
  final pulumi.Input<HealthCheckLogConfig>? logConfig;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  final pulumi.Input<List<String>>? sourceRegions;
  final pulumi.Input<SSLHealthCheck>? sslHealthCheck;
  final pulumi.Input<TCPHealthCheck>? tcpHealthCheck;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final pulumi.Input<HealthCheckType>? type;
  final pulumi.Input<UDPHealthCheck>? udpHealthCheck;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckArgs].
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
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceRegions] The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [udpHealthCheck] Optional.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  const HealthCheckArgs({
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
    this.requestId,
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
      'description': ?description,
      'grpcHealthCheck': ?pulumi.Input.mapOptionalInputValue<GRPCHealthCheck, Map<String, dynamic>>(grpcHealthCheck, (value) => value.toMap()),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTP2HealthCheck, Map<String, dynamic>>(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTPHealthCheck, Map<String, dynamic>>(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck': ?pulumi.Input.mapOptionalInputValue<HTTPSHealthCheck, Map<String, dynamic>>(httpsHealthCheck, (value) => value.toMap()),
      'kind': ?kind,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<HealthCheckLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'sourceRegions': ?sourceRegions,
      'sslHealthCheck': ?pulumi.Input.mapOptionalInputValue<SSLHealthCheck, Map<String, dynamic>>(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck': ?pulumi.Input.mapOptionalInputValue<TCPHealthCheck, Map<String, dynamic>>(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'type': ?pulumi.Input.mapOptionalInputValue<HealthCheckType, String>(type, (value) => value.wireValue),
      'udpHealthCheck': ?pulumi.Input.mapOptionalInputValue<UDPHealthCheck, Map<String, dynamic>>(udpHealthCheck, (value) => value.toMap()),
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      checkIntervalSec: (() { final guardedValue = map['checkIntervalSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grpcHealthCheck: (() { final guardedValue = map['grpcHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GRPCHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      http2HealthCheck: (() { final guardedValue = map['http2HealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTP2HealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpHealthCheck: (() { final guardedValue = map['httpHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsHealthCheck: (() { final guardedValue = map['httpsHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPSHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthCheckLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegions: (() { final guardedValue = map['sourceRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sslHealthCheck: (() { final guardedValue = map['sslHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSLHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpHealthCheck: (() { final guardedValue = map['tcpHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TCPHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthCheckType.fromValue(guardedValue as String)); })(),
      udpHealthCheck: (() { final guardedValue = map['udpHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UDPHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
