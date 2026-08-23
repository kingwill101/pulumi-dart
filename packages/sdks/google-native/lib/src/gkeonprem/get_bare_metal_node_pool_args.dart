// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
/// Arguments for getBareMetalNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_node_pool_args_doc}
class GetBareMetalNodePoolArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetBareMetalNodePoolArgs].
  /// [bareMetalClusterId] Required.
  /// [bareMetalNodePoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetBareMetalNodePoolArgs({
    required this.bareMetalClusterId,
    required this.bareMetalNodePoolId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalClusterId': bareMetalClusterId,
      'bareMetalNodePoolId': bareMetalNodePoolId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetBareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalNodePoolArgs(
      bareMetalClusterId: pulumi.Input.fromValue(map['bareMetalClusterId'] as String),
      bareMetalNodePoolId: pulumi.Input.fromValue(map['bareMetalNodePoolId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
