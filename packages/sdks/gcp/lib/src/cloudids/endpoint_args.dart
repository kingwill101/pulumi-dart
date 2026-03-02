// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudids_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_cloudids_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// An optional description of the endpoint.
  final pulumi.Input<String>? description;
  /// The location for the endpoint.
  final pulumi.Input<String> location;
  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  final pulumi.Input<String>? name;
  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String> severity;
  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  final pulumi.Input<List<String>>? threatExceptions;

  /// Creates a new [EndpointArgs].
  /// [description] An optional description of the endpoint.
  /// [location] The location for the endpoint.
  /// [name] Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  /// [network] Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The minimum alert severity level that is reported by the endpoint.
  /// [threatExceptions] Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  EndpointArgs({
    this.description,
    required this.location,
    this.name,
    required this.network,
    this.project,
    required this.severity,
    this.threatExceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'name': ?name,
      'network': network,
      'project': ?project,
      'severity': severity,
      'threatExceptions': ?threatExceptions,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      severity: (map['severity'] as String).input(),
      threatExceptions: map['threatExceptions'] == null ? null : ((map['threatExceptions'] as List).cast<String>()).input(),
    );
  }
}

