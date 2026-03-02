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
    this.enabled,
    this.hostPoolId,
    this.scalingPlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'hostPoolId': ?hostPoolId,
      'scalingPlanId': ?scalingPlanId,
    };
  }

  factory ScalingPlanHostPoolAssociationState.fromMap(Map<String, dynamic> map) {
    return ScalingPlanHostPoolAssociationState(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      hostPoolId: map['hostPoolId'] == null ? null : (map['hostPoolId'] as String).input(),
      scalingPlanId: map['scalingPlanId'] == null ? null : (map['scalingPlanId'] as String).input(),
    );
  }
}

