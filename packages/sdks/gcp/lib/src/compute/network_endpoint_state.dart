// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkEndpoint resources.
class NetworkEndpointState {
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone of network endpoint group.
  final pulumi.Input<String>? instance;

  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  final pulumi.Input<String>? ipAddress;

  /// The network endpoint group this endpoint is part of.
  final pulumi.Input<String>? networkEndpointGroup;

  /// Port number of network endpoint.
  /// **Note** `port` is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  final pulumi.Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Zone where the containing network endpoint group is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkEndpointState].
  /// [instance] The name for a specific VM instance that the IP address belongs to.
  /// [ipAddress] IPv4 address of network endpoint. The IP address must belong
  /// [networkEndpointGroup] The network endpoint group this endpoint is part of.
  /// [port] Port number of network endpoint.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Zone where the containing network endpoint group is located.
  NetworkEndpointState({
    this.instance,
    this.ipAddress,
    this.networkEndpointGroup,
    this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'networkEndpointGroup': ?networkEndpointGroup,
      'port': ?port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory NetworkEndpointState.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointState(
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
      networkEndpointGroup: (() {
        final guardedValue = map['networkEndpointGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
