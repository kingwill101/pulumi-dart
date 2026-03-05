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
    required this.hostname,
    this.location,
    required this.loggingServerId,
    required this.port,
    required this.privateCloudId,
    this.project,
    required this.protocol,
    this.requestId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'location': ?location,
      'loggingServerId': loggingServerId,
      'port': port,
      'privateCloudId': privateCloudId,
      'project': ?project,
      'protocol': pulumi.Input.mapInputValue<LoggingServerProtocol, String>(protocol, (value) => value.wireValue),
      'requestId': ?requestId,
      'sourceType': pulumi.Input.mapInputValue<LoggingServerSourceType, String>(sourceType, (value) => value.wireValue),
    };
  }

  factory LoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return LoggingServerArgs(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingServerId: pulumi.Input.fromValue(map['loggingServerId'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(LoggingServerProtocol.fromValue(map['protocol']! as String)),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: pulumi.Input.fromValue(LoggingServerSourceType.fromValue(map['sourceType']! as String)),
    );
  }
}

