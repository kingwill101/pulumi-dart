// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standby_virtual_machine_pool_elasticity_profile.dart';

/// {@template pulumi_standbypool_standby_virtual_machine_pool_args_doc}
/// The set of arguments for StandbyVirtualMachinePool.
/// {@endtemplate}
/// {@macro pulumi_standbypool_standby_virtual_machine_pool_args_doc}
class StandbyVirtualMachinePoolArgs {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final pulumi.Input<String>? attachedVirtualMachineScaleSetId;
  /// Specifies the elasticity profile of the standby virtual machine pools.
  final pulumi.Input<StandbyVirtualMachinePoolElasticityProfile>? elasticityProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the standby virtual machine pool
  final pulumi.Input<String>? standbyVirtualMachinePoolName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the desired state of virtual machines in the pool.
  final pulumi.Input<String> virtualMachineState;

  /// Creates a new [StandbyVirtualMachinePoolArgs].
  /// [attachedVirtualMachineScaleSetId] Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  /// [elasticityProfile] Specifies the elasticity profile of the standby virtual machine pools.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [standbyVirtualMachinePoolName] Name of the standby virtual machine pool
  /// [tags] Resource tags.
  /// [virtualMachineState] Specifies the desired state of virtual machines in the pool.
  const StandbyVirtualMachinePoolArgs({
    this.attachedVirtualMachineScaleSetId,
    this.elasticityProfile,
    this.location,
    required this.resourceGroupName,
    this.standbyVirtualMachinePoolName,
    this.tags,
    required this.virtualMachineState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedVirtualMachineScaleSetId': ?attachedVirtualMachineScaleSetId,
      'elasticityProfile': ?pulumi.Input.mapOptionalInputValue<StandbyVirtualMachinePoolElasticityProfile, Map<String, dynamic>>(elasticityProfile, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'standbyVirtualMachinePoolName': ?standbyVirtualMachinePoolName,
      'tags': ?tags,
      'virtualMachineState': virtualMachineState,
    };
  }

  factory StandbyVirtualMachinePoolArgs.fromMap(Map<String, dynamic> map) {
    return StandbyVirtualMachinePoolArgs(
      attachedVirtualMachineScaleSetId: (() { final guardedValue = map['attachedVirtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticityProfile: (() { final guardedValue = map['elasticityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandbyVirtualMachinePoolElasticityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      standbyVirtualMachinePoolName: (() { final guardedValue = map['standbyVirtualMachinePoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualMachineState: pulumi.Input.fromValue(map['virtualMachineState'] as String),
    );
  }
}

