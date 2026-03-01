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
  StandbyVirtualMachinePoolArgs({
    pulumi.Output<String>? attachedVirtualMachineScaleSetId,
    pulumi.Output<StandbyVirtualMachinePoolElasticityProfile>? elasticityProfile,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? standbyVirtualMachinePoolName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> virtualMachineState,
  }) :
      attachedVirtualMachineScaleSetId = pulumi.Input.asOptionalInput<String>(attachedVirtualMachineScaleSetId),
      elasticityProfile = pulumi.Input.asOptionalInput<StandbyVirtualMachinePoolElasticityProfile>(elasticityProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      standbyVirtualMachinePoolName = pulumi.Input.asOptionalInput<String>(standbyVirtualMachinePoolName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineState = pulumi.Input.asInput<String>(virtualMachineState);

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
      attachedVirtualMachineScaleSetId: map['attachedVirtualMachineScaleSetId'] == null ? null : pulumi.Output.create<String>(map['attachedVirtualMachineScaleSetId'] as String),
      elasticityProfile: map['elasticityProfile'] == null ? null : pulumi.Output.create<StandbyVirtualMachinePoolElasticityProfile>(StandbyVirtualMachinePoolElasticityProfile.fromMap((map['elasticityProfile'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      standbyVirtualMachinePoolName: map['standbyVirtualMachinePoolName'] == null ? null : pulumi.Output.create<String>(map['standbyVirtualMachinePoolName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMachineState: pulumi.Output.create<String>(map['virtualMachineState'] as String),
    );
  }
}

