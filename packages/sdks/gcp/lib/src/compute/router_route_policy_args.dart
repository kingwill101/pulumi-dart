// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_route_policy_term.dart';

/// {@template pulumi_compute_router_route_policy_router_route_policy_args_doc}
/// The set of arguments for RouterRoutePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_router_route_policy_router_route_policy_args_doc}
class RouterRoutePolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where the router and NAT reside.
  final pulumi.Input<String?>? region;
  /// The name of the Cloud Router in which this route policy will be configured.
  final pulumi.Input<String> router;
  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  final pulumi.Input<List<RouterRoutePolicyTerm>> terms;
  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  final pulumi.Input<String?>? type;

  /// Creates a new [RouterRoutePolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router and NAT reside.
  /// [router] The name of the Cloud Router in which this route policy will be configured.
  /// [terms] List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// [type] This is policy's type, which is one of IMPORT or EXPORT
  const RouterRoutePolicyArgs({
    this.deletionPolicy,
    this.name,
    this.project,
    this.region,
    required this.router,
    required this.terms,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'router': router,
      'terms': pulumi.Input.mapInputValue<List<RouterRoutePolicyTerm>, List<Map<String, dynamic>>>(terms, (value) => pulumi.Input.encodeList<RouterRoutePolicyTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory RouterRoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RouterRoutePolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: pulumi.Input.fromValue(map['router'] as String),
      terms: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterRoutePolicyTerm>(map['terms']!, (value) => RouterRoutePolicyTerm.fromMap((value as Map).cast<String, dynamic>()))),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
