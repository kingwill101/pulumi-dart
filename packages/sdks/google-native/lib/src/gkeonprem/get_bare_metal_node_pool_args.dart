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
    required pulumi.Output<String> bareMetalClusterId,
    required pulumi.Output<String> bareMetalNodePoolId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
      bareMetalNodePoolId = pulumi.Input.asInput<String>(bareMetalNodePoolId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      bareMetalClusterId: pulumi.Output.create<String>(map['bareMetalClusterId'] as String),
      bareMetalNodePoolId: pulumi.Output.create<String>(map['bareMetalNodePoolId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

