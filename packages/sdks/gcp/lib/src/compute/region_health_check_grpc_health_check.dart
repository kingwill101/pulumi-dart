// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionHealthCheckGrpcHealthCheck {
  /// The gRPC service name for the health check.
  /// The value of grpcServiceName has the following meanings by convention:
  /// * Empty serviceName means the overall status of all services at the backend.
  /// * Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.
  /// The grpcServiceName can only be ASCII.
  final pulumi.Input<String>? grpcServiceName;

  /// The port number for the health check request.
  /// Must be specified if portName and portSpecification are not set
  /// or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535.
  final pulumi.Input<int>? port;

  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// port_name are defined, port takes precedence.
  final pulumi.Input<String>? portName;

  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  /// * `USE_FIXED_PORT`: The port number in `port` is used for health checking.
  /// * `USE_NAMED_PORT`: The `portName` is used for health checking.
  /// * `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  /// If not specified, gRPC health check follows behavior specified in `port` and
  /// `portName` fields.
  /// Possible values are: `USE_FIXED_PORT`, `USE_NAMED_PORT`, `USE_SERVING_PORT`.
  final pulumi.Input<String>? portSpecification;

  /// Creates a new [RegionHealthCheckGrpcHealthCheck].
  /// [grpcServiceName] The gRPC service name for the health check.
  /// [port] The port number for the health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  RegionHealthCheckGrpcHealthCheck({
    this.grpcServiceName,
    this.port,
    this.portName,
    this.portSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceName': ?grpcServiceName,
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification,
    };
  }

  factory RegionHealthCheckGrpcHealthCheck.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckGrpcHealthCheck(
      grpcServiceName: (() {
        final guardedValue = map['grpcServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      portName: (() {
        final guardedValue = map['portName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portSpecification: (() {
        final guardedValue = map['portSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
