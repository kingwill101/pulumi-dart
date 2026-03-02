// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_https_health_check_args_doc}
/// The set of arguments for HttpsHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_https_health_check_args_doc}
class HttpsHealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  /// The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  final pulumi.Input<String>? host;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The TCP port number for the HTTPS health check request. The default value is 443.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The request path of the HTTPS health check request. The default value is "/". Must comply with RFC3986.
  final pulumi.Input<String>? requestPath;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have a greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HttpsHealthCheckArgs].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [host] The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [port] The TCP port number for the HTTPS health check request. The default value is 443.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [requestPath] The request path of the HTTPS health check request. The default value is "/". Must comply with RFC3986.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have a greater value than checkIntervalSec.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  HttpsHealthCheckArgs({
    this.checkIntervalSec,
    this.description,
    this.healthyThreshold,
    this.host,
    this.kind,
    this.name,
    this.port,
    this.project,
    this.requestId,
    this.requestPath,
    this.timeoutSec,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'description': ?description,
      'healthyThreshold': ?healthyThreshold,
      'host': ?host,
      'kind': ?kind,
      'name': ?name,
      'port': ?port,
      'project': ?project,
      'requestId': ?requestId,
      'requestPath': ?requestPath,
      'timeoutSec': ?timeoutSec,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HttpsHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HttpsHealthCheckArgs(
      checkIntervalSec: map['checkIntervalSec'] == null ? null : (map['checkIntervalSec']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold']! as int).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      requestPath: map['requestPath'] == null ? null : (map['requestPath']! as String).input(),
      timeoutSec: map['timeoutSec'] == null ? null : (map['timeoutSec']! as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

