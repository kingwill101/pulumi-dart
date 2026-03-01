// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScalingPlanHostPoolAssociation resources.
class ScalingPlanHostPoolAssociationState {
  /// Should the Scaling Plan be enabled on this Host Pool.
  final pulumi.Input<bool>? enabled;
  /// The resource ID for the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostPoolId;
  /// The resource ID for the Virtual Desktop Scaling Plan. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scalingPlanId;

  /// Creates a new [ScalingPlanHostPoolAssociationState].
  /// [enabled] Should the Scaling Plan be enabled on this Host Pool.
  /// [hostPoolId] The resource ID for the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  /// [scalingPlanId] The resource ID for the Virtual Desktop Scaling Plan. Changing this forces a new resource to be created.
  ScalingPlanHostPoolAssociationState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? hostPoolId,
    pulumi.Output<String>? scalingPlanId,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      hostPoolId = pulumi.Input.asOptionalInput<String>(hostPoolId),
      scalingPlanId = pulumi.Input.asOptionalInput<String>(scalingPlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'hostPoolId': ?hostPoolId,
      'scalingPlanId': ?scalingPlanId,
    };
  }

  factory ScalingPlanHostPoolAssociationState.fromMap(Map<String, dynamic> map) {
    return ScalingPlanHostPoolAssociationState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      hostPoolId: map['hostPoolId'] == null ? null : pulumi.Output.create<String>(map['hostPoolId'] as String),
      scalingPlanId: map['scalingPlanId'] == null ? null : pulumi.Output.create<String>(map['scalingPlanId'] as String),
    );
  }
}

