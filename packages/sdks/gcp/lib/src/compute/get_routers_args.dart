// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_routers_get_routers_args_doc}
/// Arguments for getRouters.
/// {@endtemplate}
/// {@macro pulumi_compute_get_routers_get_routers_args_doc}
class GetRoutersArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If provided, only resources from the given regions are queried.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRoutersArgs].
  /// [project] The project in which the resource belongs. If it
  /// [region] If provided, only resources from the given regions are queried.
  GetRoutersArgs({
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRoutersArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutersArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

