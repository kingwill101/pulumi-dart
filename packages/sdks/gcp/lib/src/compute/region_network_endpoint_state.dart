// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionNetworkEndpoint resources.
class RegionNetworkEndpointState {
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

  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? networkEndpointId;

  /// Port number of network endpoint.
  final pulumi.Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the containing network endpoint group is located.
  final pulumi.Input<String>? region;

  /// The network endpoint group this endpoint is part of.
  final pulumi.Input<String>? regionNetworkEndpointGroup;

  /// Creates a new [RegionNetworkEndpointState].
  /// [clientDestinationPort] Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [instance] The name for a specific VM instance that the IP address belongs to.
  /// [ipAddress] IPv4 address external endpoint.
  /// [networkEndpointId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [port] Port number of network endpoint.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the containing network endpoint group is located.
  /// [regionNetworkEndpointGroup] The network endpoint group this endpoint is part of.
  RegionNetworkEndpointState({
    this.clientDestinationPort,
    this.fqdn,
    this.instance,
    this.ipAddress,
    this.networkEndpointId,
    this.port,
    this.project,
    this.region,
    this.regionNetworkEndpointGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientDestinationPort': ?clientDestinationPort,
      'fqdn': ?fqdn,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'networkEndpointId': ?networkEndpointId,
      'port': ?port,
      'project': ?project,
      'region': ?region,
      'regionNetworkEndpointGroup': ?regionNetworkEndpointGroup,
    };
  }

  factory RegionNetworkEndpointState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointState(
      clientDestinationPort: (() {
        final guardedValue = map['clientDestinationPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instance: (() {
        final guardedValue = map['instance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkEndpointId: (() {
        final guardedValue = map['networkEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionNetworkEndpointGroup: (() {
        final guardedValue = map['regionNetworkEndpointGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
