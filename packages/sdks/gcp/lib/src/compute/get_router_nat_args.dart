// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_router_nat_get_router_nat_args_doc}
/// Arguments for getRouterNat.
/// {@endtemplate}
/// {@macro pulumi_compute_get_router_nat_get_router_nat_args_doc}
class GetRouterNatArgs {
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the router and NAT reside.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which this NAT will be configured.
  ///
  /// - - -
  final pulumi.Input<String> router;

  /// Creates a new [GetRouterNatArgs].
  /// [name] Name of the NAT service. The name must be 1-63 characters long and
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router and NAT reside.
  /// [router] The name of the Cloud Router in which this NAT will be configured.
  GetRouterNatArgs({
    required this.name,
    this.project,
    this.region,
    required this.router,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
      'router': router,
    };
  }

  factory GetRouterNatArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterNatArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      router: (map['router'] as String).input(),
    );
  }
}

