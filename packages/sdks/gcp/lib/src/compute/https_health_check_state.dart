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
    pulumi.Output<int>? checkIntervalSec,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<int>? healthyThreshold,
    pulumi.Output<String>? host,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestPath,
    pulumi.Output<String>? selfLink,
    pulumi.Output<int>? timeoutSec,
    pulumi.Output<int>? unhealthyThreshold,
  }) :
      checkIntervalSec = pulumi.Input.asOptionalInput<int>(checkIntervalSec),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
      host = pulumi.Input.asOptionalInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestPath = pulumi.Input.asOptionalInput<String>(requestPath),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
      unhealthyThreshold = pulumi.Input.asOptionalInput<int>(unhealthyThreshold);

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
      checkIntervalSec: map['checkIntervalSec'] == null ? null : pulumi.Output.create<int>(map['checkIntervalSec'] as int),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      healthyThreshold: map['healthyThreshold'] == null ? null : pulumi.Output.create<int>(map['healthyThreshold'] as int),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestPath: map['requestPath'] == null ? null : pulumi.Output.create<String>(map['requestPath'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      timeoutSec: map['timeoutSec'] == null ? null : pulumi.Output.create<int>(map['timeoutSec'] as int),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : pulumi.Output.create<int>(map['unhealthyThreshold'] as int),
    );
  }
}

