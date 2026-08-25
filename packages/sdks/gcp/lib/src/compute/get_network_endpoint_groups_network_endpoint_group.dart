// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkEndpointGroupsNetworkEndpointGroup {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int> defaultPort;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String> description;
  /// The uniquely generated identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<int> generatedId;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression 'a-z?' which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  final pulumi.Input<String> network;
  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  ///
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT. Default value: "GCE_VM_IP_PORT" Possible values: ["GCE_VM_IP", "GCE_VM_IP_PORT", "NON_GCP_PRIVATE_IP_PORT", "INTERNET_IP_PORT", "INTERNET_FQDN_PORT", "SERVERLESS", "PRIVATE_SERVICE_CONNECT", "GCE_VM_IP_DEDICATED_BACKEND"]
  final pulumi.Input<String> networkEndpointType;
  /// The ID of the project to list Network Endpoint Groups in. If it is not provided, the provider project is used.
  final pulumi.Input<String> project;
  final pulumi.Input<String> selfLink;
  /// Number of network endpoints in the network endpoint group.
  final pulumi.Input<int> size;
  /// Optional subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String> subnetwork;
  /// The zone to list Network Endpoint Groups for. If `zone` is not specified, the provider-level zone must be set and is used
  /// instead.
  final pulumi.Input<String> zone;

  /// Creates a new [GetNetworkEndpointGroupsNetworkEndpointGroup].
  /// [defaultPort] The default port used if the port number is not specified in the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] An optional description of this resource. Provide this property when
  /// [generatedId] The uniquely generated identifier for the resource. This identifier is defined by the server.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [network] The network to which all network endpoints in the NEG belong.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] The ID of the project to list Network Endpoint Groups in. If it is not provided, the provider project is used.
  /// [selfLink] Required.
  /// [size] Number of network endpoints in the network endpoint group.
  /// [subnetwork] Optional subnetwork to which all network endpoints in the NEG belong.
  /// [zone] The zone to list Network Endpoint Groups for. If `zone` is not specified, the provider-level zone must be set and is used
  const GetNetworkEndpointGroupsNetworkEndpointGroup({
    required this.defaultPort,
    required this.deletionPolicy,
    required this.description,
    required this.generatedId,
    required this.name,
    required this.network,
    required this.networkEndpointType,
    required this.project,
    required this.selfLink,
    required this.size,
    required this.subnetwork,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': defaultPort,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'generatedId': generatedId,
      'name': name,
      'network': network,
      'networkEndpointType': networkEndpointType,
      'project': project,
      'selfLink': selfLink,
      'size': size,
      'subnetwork': subnetwork,
      'zone': zone,
    };
  }

  factory GetNetworkEndpointGroupsNetworkEndpointGroup.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupsNetworkEndpointGroup(
      defaultPort: pulumi.Input.fromValue((map['defaultPort'] as num).toInt()),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      generatedId: pulumi.Input.fromValue((map['generatedId'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkEndpointType: pulumi.Input.fromValue(map['networkEndpointType'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
