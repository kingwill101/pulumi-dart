// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHttpsHealthCheck.
class GetHttpsHealthCheckComputeV1Result {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int checkIntervalSec;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int healthyThreshold;
  /// The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  final String host;
  /// Type of the resource.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The TCP port number for the HTTPS health check request. The default value is 443.
  final int port;
  /// The request path of the HTTPS health check request. The default value is "/". Must comply with RFC3986.
  final String requestPath;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have a greater value than checkIntervalSec.
  final int timeoutSec;
  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int unhealthyThreshold;

  /// Creates a new [GetHttpsHealthCheckComputeV1Result].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [host] The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [port] The TCP port number for the HTTPS health check request. The default value is 443.
  /// [requestPath] The request path of the HTTPS health check request. The default value is "/". Must comply with RFC3986.
  /// [selfLink] Server-defined URL for the resource.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have a greater value than checkIntervalSec.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  const GetHttpsHealthCheckComputeV1Result({
    required this.checkIntervalSec,
    required this.creationTimestamp,
    required this.description,
    required this.healthyThreshold,
    required this.host,
    required this.kind,
    required this.name,
    required this.port,
    required this.requestPath,
    required this.selfLink,
    required this.timeoutSec,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': checkIntervalSec,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'healthyThreshold': healthyThreshold,
      'host': host,
      'kind': kind,
      'name': name,
      'port': port,
      'requestPath': requestPath,
      'selfLink': selfLink,
      'timeoutSec': timeoutSec,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetHttpsHealthCheckComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetHttpsHealthCheckComputeV1Result(
      checkIntervalSec: map['checkIntervalSec'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      healthyThreshold: map['healthyThreshold'] as int,
      host: map['host'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      requestPath: map['requestPath'] as String,
      selfLink: map['selfLink'] as String,
      timeoutSec: map['timeoutSec'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

