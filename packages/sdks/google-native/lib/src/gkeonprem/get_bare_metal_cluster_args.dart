// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
/// Arguments for getBareMetalCluster.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_args_doc}
class GetBareMetalClusterArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalClusterArgs].
  /// [bareMetalClusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetBareMetalClusterArgs({
    required this.bareMetalClusterId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetBareMetalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterArgs(
      bareMetalClusterId: pulumi.Input.fromValue(
        map['bareMetalClusterId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      view: (() {
        final guardedValue = map['view'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
