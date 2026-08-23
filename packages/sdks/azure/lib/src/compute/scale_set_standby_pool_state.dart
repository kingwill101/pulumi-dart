// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_standby_pool_elasticity_profile.dart';

/// Input properties used for looking up and filtering ScaleSetStandbyPool resources.
class ScaleSetStandbyPoolState {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final pulumi.Input<String>? attachedVirtualMachineScaleSetId;
  /// An `elasticityProfile` block as defined below.
  final pulumi.Input<ScaleSetStandbyPoolElasticityProfile>? elasticityProfile;
  /// Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Standby Pool.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  final pulumi.Input<String>? virtualMachineState;

  /// Creates a new [ScaleSetStandbyPoolState].
  /// [attachedVirtualMachineScaleSetId] Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  /// [elasticityProfile] An `elasticityProfile` block as defined below.
  /// [location] Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [name] Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Standby Pool.
  /// [virtualMachineState] Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  const ScaleSetStandbyPoolState({
    this.attachedVirtualMachineScaleSetId,
    this.elasticityProfile,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualMachineState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedVirtualMachineScaleSetId': ?attachedVirtualMachineScaleSetId,
      'elasticityProfile': ?pulumi.Input.mapOptionalInputValue<ScaleSetStandbyPoolElasticityProfile, Map<String, dynamic>>(elasticityProfile, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualMachineState': ?virtualMachineState,
    };
  }

  factory ScaleSetStandbyPoolState.fromMap(Map<String, dynamic> map) {
    return ScaleSetStandbyPoolState(
      attachedVirtualMachineScaleSetId: (() { final guardedValue = map['attachedVirtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticityProfile: (() { final guardedValue = map['elasticityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetStandbyPoolElasticityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualMachineState: (() { final guardedValue = map['virtualMachineState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
