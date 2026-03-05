// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_global_network_endpoint_global_network_endpoint_args_doc}
/// The set of arguments for GlobalNetworkEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_global_network_endpoint_global_network_endpoint_args_doc}
class GlobalNetworkEndpointArgs {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  final pulumi.Input<String>? fqdn;
  /// The global network endpoint group this endpoint is part of.
  final pulumi.Input<String> globalNetworkEndpointGroup;
  /// IPv4 address external endpoint.
  final pulumi.Input<String>? ipAddress;
  /// Port number of the external endpoint.
  final pulumi.Input<int> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlobalNetworkEndpointArgs].
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [globalNetworkEndpointGroup] The global network endpoint group this endpoint is part of.
  /// [ipAddress] IPv4 address external endpoint.
  /// [port] Port number of the external endpoint.
  /// [project] The ID of the project in which the resource belongs.
  GlobalNetworkEndpointArgs({
    this.fqdn,
    required this.globalNetworkEndpointGroup,
    this.ipAddress,
    required this.port,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'globalNetworkEndpointGroup': globalNetworkEndpointGroup,
      'ipAddress': ?ipAddress,
      'port': port,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointArgs(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNetworkEndpointGroup: pulumi.Input.fromValue(map['globalNetworkEndpointGroup'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

