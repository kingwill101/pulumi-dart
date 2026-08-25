// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudids_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_cloudids_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of the endpoint.
  final pulumi.Input<String?>? description;
  /// The location for the endpoint.
  final pulumi.Input<String> location;
  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  final pulumi.Input<String?>? name;
  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String> severity;
  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  final pulumi.Input<List<String>?>? threatExceptions;

  /// Creates a new [EndpointArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of the endpoint.
  /// [location] The location for the endpoint.
  /// [name] Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  /// [network] Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The minimum alert severity level that is reported by the endpoint.
  /// [threatExceptions] Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  const EndpointArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      threatExceptions: (() { final guardedValue = map['threatExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
