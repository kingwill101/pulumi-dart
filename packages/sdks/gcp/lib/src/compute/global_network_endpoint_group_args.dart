// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_global_network_endpoint_group_global_network_endpoint_group_args_doc}
/// The set of arguments for GlobalNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_global_network_endpoint_group_global_network_endpoint_group_args_doc}
class GlobalNetworkEndpointGroupArgs {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int>? defaultPort;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Type of network endpoints in this network endpoint group.
  /// Possible values are: `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`.
  final pulumi.Input<String> networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlobalNetworkEndpointGroupArgs].
  /// [defaultPort] The default port used if the port number is not specified in the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [name] Name of the resource; provided by the client when the resource is
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] The ID of the project in which the resource belongs.
  const GlobalNetworkEndpointGroupArgs({
    this.defaultPort,
    this.deletionPolicy,
    this.description,
    this.name,
    required this.networkEndpointType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': ?defaultPort,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'networkEndpointType': networkEndpointType,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupArgs(
      defaultPort: (() { final guardedValue = map['defaultPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkEndpointType: pulumi.Input.fromValue(map['networkEndpointType'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
