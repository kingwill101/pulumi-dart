// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HttpsHealthCheck resources.
class HttpsHealthCheckState {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final pulumi.Input<int>? checkIntervalSec;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  /// The value of the host header in the HTTPS health check request. If
  /// left empty (default value), the public IP on behalf of which this
  /// health check is performed will be used.
  final pulumi.Input<String>? host;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The TCP port number for the HTTPS health check request.
  /// The default value is 443.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The request path of the HTTPS health check request.
  /// The default value is /.
  final pulumi.Input<String>? requestPath;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;
  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HttpsHealthCheckState].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many
  /// [host] The value of the host header in the HTTPS health check request. If
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [port] The TCP port number for the HTTPS health check request.
  /// [project] The ID of the project in which the resource belongs.
  /// [requestPath] The request path of the HTTPS health check request.
  /// [selfLink] The URI of the created resource.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many
  HttpsHealthCheckState({
    this.checkIntervalSec,
    this.creationTimestamp,
    this.description,
    this.healthyThreshold,
    this.host,
    this.name,
    this.port,
    this.project,
    this.requestPath,
    this.selfLink,
    this.timeoutSec,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'healthyThreshold': ?healthyThreshold,
      'host': ?host,
      'name': ?name,
      'port': ?port,
      'project': ?project,
      'requestPath': ?requestPath,
      'selfLink': ?selfLink,
      'timeoutSec': ?timeoutSec,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HttpsHealthCheckState.fromMap(Map<String, dynamic> map) {
    return HttpsHealthCheckState(
      checkIntervalSec: map['checkIntervalSec'] == null ? null : (map['checkIntervalSec']! as int).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold']! as int).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestPath: map['requestPath'] == null ? null : (map['requestPath']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      timeoutSec: map['timeoutSec'] == null ? null : (map['timeoutSec']! as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

