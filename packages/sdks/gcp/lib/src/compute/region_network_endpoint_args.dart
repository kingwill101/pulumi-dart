// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_network_endpoint_region_network_endpoint_args_doc}
/// The set of arguments for RegionNetworkEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_endpoint_region_network_endpoint_args_doc}
class RegionNetworkEndpointArgs {
  /// Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  final pulumi.Input<int>? clientDestinationPort;
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  final pulumi.Input<String>? fqdn;
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORTMAP.
  final pulumi.Input<String>? instance;
  /// IPv4 address external endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT.
  final pulumi.Input<String>? ipAddress;
  /// Port number of network endpoint.
  final pulumi.Input<int> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the containing network endpoint group is located.
  final pulumi.Input<String>? region;
  /// The network endpoint group this endpoint is part of.
  final pulumi.Input<String> regionNetworkEndpointGroup;

  /// Creates a new [RegionNetworkEndpointArgs].
  /// [clientDestinationPort] Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [instance] The name for a specific VM instance that the IP address belongs to.
  /// [ipAddress] IPv4 address external endpoint.
  /// [port] Port number of network endpoint.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the containing network endpoint group is located.
  /// [regionNetworkEndpointGroup] The network endpoint group this endpoint is part of.
  RegionNetworkEndpointArgs({
    pulumi.Output<int>? clientDestinationPort,
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? ipAddress,
    required pulumi.Output<int> port,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> regionNetworkEndpointGroup,
  }) :
      clientDestinationPort = pulumi.Input.asOptionalInput<int>(clientDestinationPort),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      port = pulumi.Input.asInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionNetworkEndpointGroup = pulumi.Input.asInput<String>(regionNetworkEndpointGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientDestinationPort': ?clientDestinationPort,
      'fqdn': ?fqdn,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'port': port,
      'project': ?project,
      'region': ?region,
      'regionNetworkEndpointGroup': regionNetworkEndpointGroup,
    };
  }

  factory RegionNetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointArgs(
      clientDestinationPort: map['clientDestinationPort'] == null ? null : pulumi.Output.create<int>(map['clientDestinationPort'] as int),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionNetworkEndpointGroup: pulumi.Output.create<String>(map['regionNetworkEndpointGroup'] as String),
    );
  }
}

