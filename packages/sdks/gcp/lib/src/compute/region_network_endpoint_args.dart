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
    this.clientDestinationPort,
    this.fqdn,
    this.instance,
    this.ipAddress,
    required this.port,
    this.project,
    this.region,
    required this.regionNetworkEndpointGroup,
  });

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
      clientDestinationPort: map['clientDestinationPort'] == null ? null : (map['clientDestinationPort'] as int).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      port: (map['port'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      regionNetworkEndpointGroup: (map['regionNetworkEndpointGroup'] as String).input(),
    );
  }
}

