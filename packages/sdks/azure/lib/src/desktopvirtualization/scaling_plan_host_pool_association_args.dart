// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_scaling_plan_host_pool_association_scaling_plan_host_pool_association_args_doc}
/// The set of arguments for ScalingPlanHostPoolAssociation.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_host_pool_association_scaling_plan_host_pool_association_args_doc}
class ScalingPlanHostPoolAssociationArgs {
  /// Should the Scaling Plan be enabled on this Host Pool.
  final pulumi.Input<bool> enabled;
  /// The resource ID for the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> hostPoolId;
  /// The resource ID for the Virtual Desktop Scaling Plan. Changing this forces a new resource to be created.
  final pulumi.Input<String> scalingPlanId;

  /// Creates a new [ScalingPlanHostPoolAssociationArgs].
  /// [enabled] Should the Scaling Plan be enabled on this Host Pool.
  /// [hostPoolId] The resource ID for the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  /// [scalingPlanId] The resource ID for the Virtual Desktop Scaling Plan. Changing this forces a new resource to be created.
  ScalingPlanHostPoolAssociationArgs({
    required this.enabled,
    required this.hostPoolId,
    required this.scalingPlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'hostPoolId': hostPoolId,
      'scalingPlanId': scalingPlanId,
    };
  }

  factory ScalingPlanHostPoolAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanHostPoolAssociationArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      hostPoolId: pulumi.Input.fromValue(map['hostPoolId'] as String),
      scalingPlanId: pulumi.Input.fromValue(map['scalingPlanId'] as String),
    );
  }
}

