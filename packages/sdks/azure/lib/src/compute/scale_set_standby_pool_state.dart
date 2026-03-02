// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_standby_pool_elasticity_profile.dart';

/// Input properties used for looking up and filtering ScaleSetStandbyPool resources.
class ScaleSetStandbyPoolState {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final pulumi.Input<String>? attachedVirtualMachineScaleSetId;
  /// An `elasticity_profile` block as defined below.
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
  /// [elasticityProfile] An `elasticity_profile` block as defined below.
  /// [location] Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [name] Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Standby Pool.
  /// [virtualMachineState] Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  ScaleSetStandbyPoolState({
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
      attachedVirtualMachineScaleSetId: map['attachedVirtualMachineScaleSetId'] == null ? null : (map['attachedVirtualMachineScaleSetId']! as String).input(),
      elasticityProfile: map['elasticityProfile'] == null ? null : (ScaleSetStandbyPoolElasticityProfile.fromMap((map['elasticityProfile']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualMachineState: map['virtualMachineState'] == null ? null : (map['virtualMachineState']! as String).input(),
    );
  }
}

