// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v_pngateway_vpngateway_args_doc}
/// The set of arguments for VPNGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v_pngateway_vpngateway_args_doc}
class VPNGatewayArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The network this VPN gateway is accepting traffic for.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region this gateway should sit in.
  final pulumi.Input<String>? region;

  /// Creates a new [VPNGatewayArgs].
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network this VPN gateway is accepting traffic for.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region this gateway should sit in.
  VPNGatewayArgs({
    this.description,
    this.name,
    required this.network,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'network': network,
      'project': ?project,
      'region': ?region,
    };
  }

  factory VPNGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VPNGatewayArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

