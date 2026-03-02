// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_severity.dart';

/// {@template pulumi_ids_v1_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_ids_v1_endpoint_args_doc}
class EndpointArgs {
  /// User-provided description of the endpoint
  final pulumi.Input<String>? description;
  /// Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  final pulumi.Input<String> endpointId;
  /// The labels of the endpoint.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Lowest threat severity that this endpoint will alert on.
  final pulumi.Input<EndpointSeverity> severity;
  /// List of threat IDs to be excepted from generating alerts.
  final pulumi.Input<List<String>>? threatExceptions;
  /// Whether the endpoint should report traffic logs in addition to threat logs.
  final pulumi.Input<bool>? trafficLogs;

  /// Creates a new [EndpointArgs].
  /// [description] User-provided description of the endpoint
  /// [endpointId] Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  /// [labels] The labels of the endpoint.
  /// [location] Optional.
  /// [network] The fully qualified URL of the network to which the IDS Endpoint is attached.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [severity] Lowest threat severity that this endpoint will alert on.
  /// [threatExceptions] List of threat IDs to be excepted from generating alerts.
  /// [trafficLogs] Whether the endpoint should report traffic logs in addition to threat logs.
  EndpointArgs({
    this.description,
    required this.endpointId,
    this.labels,
    this.location,
    required this.network,
    this.project,
    this.requestId,
    required this.severity,
    this.threatExceptions,
    this.trafficLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointId': endpointId,
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'project': ?project,
      'requestId': ?requestId,
      'severity': pulumi.Input.mapInputValue<EndpointSeverity, String>(severity, (value) => value.value),
      'threatExceptions': ?threatExceptions,
      'trafficLogs': ?trafficLogs,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointId: (map['endpointId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      severity: (EndpointSeverity.fromValue(map['severity'] as String)).input(),
      threatExceptions: map['threatExceptions'] == null ? null : ((map['threatExceptions']! as List).cast<String>()).input(),
      trafficLogs: map['trafficLogs'] == null ? null : (map['trafficLogs']! as bool).input(),
    );
  }
}

