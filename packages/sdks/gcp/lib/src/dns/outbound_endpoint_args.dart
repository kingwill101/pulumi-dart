// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_outbound_endpoint_outbound_endpoint_args_doc}
/// The set of arguments for OutboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dns_outbound_endpoint_outbound_endpoint_args_doc}
class OutboundEndpointArgs {
  /// Annotations as key value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User provided description.
  final pulumi.Input<String?>? description;
  /// User provided IP address to use for outbound DNS forwarding. This address
  /// must be a free address on the subnetwork. If omitted, a free IP address
  /// from the subnetwork is automatically allocated.
  final pulumi.Input<String?>? endpointIp;
  /// Labels as key value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the OutboundEndpoint.
  final pulumi.Input<String> location;
  /// The name of the OutboundEndpoint.
  final pulumi.Input<String?>? name;
  /// The VPC network containing the outbound endpoint, specified as full path.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The subnetwork holding the endpoint_ip, specified as full path.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [OutboundEndpointArgs].
  /// [annotations] Annotations as key value pairs
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User provided description.
  /// [endpointIp] User provided IP address to use for outbound DNS forwarding. This address
  /// [labels] Labels as key value pairs
  /// [location] The location of the OutboundEndpoint.
  /// [name] The name of the OutboundEndpoint.
  /// [network] The VPC network containing the outbound endpoint, specified as full path.
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetwork] The subnetwork holding the endpoint_ip, specified as full path.
  const OutboundEndpointArgs({
    this.annotations,
    this.deletionPolicy,
    this.description,
    this.endpointIp,
    this.labels,
    required this.location,
    this.name,
    required this.network,
    this.project,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'endpointIp': ?endpointIp,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'network': network,
      'project': ?project,
      'subnetwork': subnetwork,
    };
  }

  factory OutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return OutboundEndpointArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointIp: (() { final guardedValue = map['endpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
