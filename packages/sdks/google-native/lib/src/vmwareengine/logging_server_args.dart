// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_server_protocol.dart';
import 'logging_server_source_type.dart';

/// {@template pulumi_vmwareengine_v1_logging_server_args_doc}
/// The set of arguments for LoggingServer.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_logging_server_args_doc}
class LoggingServerArgs {
  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  final pulumi.Input<String> hostname;
  final pulumi.Input<String>? location;
  /// Required. The user-provided identifier of the `LoggingServer` to be created. This identifier must be unique among `LoggingServer` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> loggingServerId;
  /// Port number at which the logging server receives logs.
  final pulumi.Input<int> port;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;
  /// Protocol used by vCenter to send logs to a logging server.
  final pulumi.Input<LoggingServerProtocol> protocol;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of component that produces logs that will be forwarded to this logging server.
  final pulumi.Input<LoggingServerSourceType> sourceType;

  /// Creates a new [LoggingServerArgs].
  /// [hostname] Fully-qualified domain name (FQDN) or IP Address of the logging server.
  /// [location] Optional.
  /// [loggingServerId] Required. The user-provided identifier of the `LoggingServer` to be created. This identifier must be unique among `LoggingServer` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [port] Port number at which the logging server receives logs.
  /// [privateCloudId] Required.
  /// [project] Optional.
  /// [protocol] Protocol used by vCenter to send logs to a logging server.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceType] The type of component that produces logs that will be forwarded to this logging server.
  LoggingServerArgs({
    required pulumi.Output<String> hostname,
    pulumi.Output<String>? location,
    required pulumi.Output<String> loggingServerId,
    required pulumi.Output<int> port,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
    required pulumi.Output<LoggingServerProtocol> protocol,
    pulumi.Output<String>? requestId,
    required pulumi.Output<LoggingServerSourceType> sourceType,
  }) :
      hostname = pulumi.Input.asInput<String>(hostname),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingServerId = pulumi.Input.asInput<String>(loggingServerId),
      port = pulumi.Input.asInput<int>(port),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project),
      protocol = pulumi.Input.asInput<LoggingServerProtocol>(protocol),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceType = pulumi.Input.asInput<LoggingServerSourceType>(sourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'location': ?location,
      'loggingServerId': loggingServerId,
      'port': port,
      'privateCloudId': privateCloudId,
      'project': ?project,
      'protocol': pulumi.Input.mapInputValue<LoggingServerProtocol, String>(protocol, (value) => value.value),
      'requestId': ?requestId,
      'sourceType': pulumi.Input.mapInputValue<LoggingServerSourceType, String>(sourceType, (value) => value.value),
    };
  }

  factory LoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return LoggingServerArgs(
      hostname: pulumi.Output.create<String>(map['hostname'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loggingServerId: pulumi.Output.create<String>(map['loggingServerId'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      protocol: pulumi.Output.create<LoggingServerProtocol>(LoggingServerProtocol.fromValue(map['protocol'] as String)),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceType: pulumi.Output.create<LoggingServerSourceType>(LoggingServerSourceType.fromValue(map['sourceType'] as String)),
    );
  }
}

