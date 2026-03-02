// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_router_nat_address_router_nat_address_args_doc}
/// The set of arguments for RouterNatAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_router_nat_address_router_nat_address_args_doc}
class RouterNatAddressArgs {
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>>? drainNatIps;
  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>> natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the NAT service reside.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which the referenced NAT service is configured.
  final pulumi.Input<String> router;
  /// The name of the Nat service in which this address will be configured.
  final pulumi.Input<String> routerNat;

  /// Creates a new [RouterNatAddressArgs].
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be
  /// [natIps] Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the NAT service reside.
  /// [router] The name of the Cloud Router in which the referenced NAT service is configured.
  /// [routerNat] The name of the Nat service in which this address will be configured.
  RouterNatAddressArgs({
    this.drainNatIps,
    required this.natIps,
    this.project,
    this.region,
    required this.router,
    required this.routerNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainNatIps': ?drainNatIps,
      'natIps': natIps,
      'project': ?project,
      'region': ?region,
      'router': router,
      'routerNat': routerNat,
    };
  }

  factory RouterNatAddressArgs.fromMap(Map<String, dynamic> map) {
    return RouterNatAddressArgs(
      drainNatIps: map['drainNatIps'] == null ? null : ((map['drainNatIps'] as List).cast<String>()).input(),
      natIps: ((map['natIps'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      router: (map['router'] as String).input(),
      routerNat: (map['routerNat'] as String).input(),
    );
  }
}

