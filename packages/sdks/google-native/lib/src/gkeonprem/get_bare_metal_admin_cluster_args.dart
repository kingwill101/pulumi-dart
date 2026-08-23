// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
/// Arguments for getBareMetalAdminCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_args_doc}
class GetBareMetalAdminClusterArgs {
  final pulumi.Input<String> bareMetalAdminClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalAdminClusterArgs].
  /// [bareMetalAdminClusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetBareMetalAdminClusterArgs({
    required this.bareMetalAdminClusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalAdminClusterId': bareMetalAdminClusterId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetBareMetalAdminClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterArgs(
      bareMetalAdminClusterId: pulumi.Input.fromValue(map['bareMetalAdminClusterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
