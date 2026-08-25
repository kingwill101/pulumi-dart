// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_router_status_get_router_status_args_doc}
/// Arguments for getRouterStatus.
/// {@endtemplate}
/// {@macro pulumi_compute_get_router_status_get_router_status_args_doc}
class GetRouterStatusArgs {
  /// The name of the router.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region this router has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetRouterStatusArgs].
  /// [name] The name of the router.
  /// [project] The ID of the project in which the resource
  /// [region] The region this router has been created in. If
  const GetRouterStatusArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRouterStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
