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
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> router,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asInput<String>(router);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      router: pulumi.Output.create<String>(map['router'] as String),
    );
  }
}

