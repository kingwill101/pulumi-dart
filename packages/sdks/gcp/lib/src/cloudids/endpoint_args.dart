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
    pulumi.Output<String>? description,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> network,
    pulumi.Output<String>? project,
    required pulumi.Output<String> severity,
    pulumi.Output<List<String>>? threatExceptions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      severity = pulumi.Input.asInput<String>(severity),
      threatExceptions = pulumi.Input.asOptionalInput<List<String>>(threatExceptions);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      threatExceptions: map['threatExceptions'] == null ? null : pulumi.Output.create<List<String>>((map['threatExceptions'] as List).cast<String>()),
    );
  }
}

