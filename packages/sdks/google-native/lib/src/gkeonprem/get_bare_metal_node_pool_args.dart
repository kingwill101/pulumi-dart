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
  GetBareMetalNodePoolArgs({
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
      bareMetalClusterId: (map['bareMetalClusterId'] as String).input(),
      bareMetalNodePoolId: (map['bareMetalNodePoolId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
    );
  }
}

