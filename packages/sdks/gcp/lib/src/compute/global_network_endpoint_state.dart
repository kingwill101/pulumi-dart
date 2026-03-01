// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalNetworkEndpoint resources.
class GlobalNetworkEndpointState {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  final pulumi.Input<String>? fqdn;
  /// The global network endpoint group this endpoint is part of.
  final pulumi.Input<String>? globalNetworkEndpointGroup;
  /// IPv4 address external endpoint.
  final pulumi.Input<String>? ipAddress;
  /// Port number of the external endpoint.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlobalNetworkEndpointState].
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [globalNetworkEndpointGroup] The global network endpoint group this endpoint is part of.
  /// [ipAddress] IPv4 address external endpoint.
  /// [port] Port number of the external endpoint.
  /// [project] The ID of the project in which the resource belongs.
  GlobalNetworkEndpointState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? globalNetworkEndpointGroup,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      globalNetworkEndpointGroup = pulumi.Input.asOptionalInput<String>(globalNetworkEndpointGroup),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'globalNetworkEndpointGroup': ?globalNetworkEndpointGroup,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointState.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      globalNetworkEndpointGroup: map['globalNetworkEndpointGroup'] == null ? null : pulumi.Output.create<String>(map['globalNetworkEndpointGroup'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

