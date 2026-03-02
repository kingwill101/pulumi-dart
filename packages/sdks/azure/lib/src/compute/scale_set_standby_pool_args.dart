// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_standby_pool_elasticity_profile.dart';

/// {@template pulumi_compute_scale_set_standby_pool_scale_set_standby_pool_args_doc}
/// The set of arguments for ScaleSetStandbyPool.
/// {@endtemplate}
/// {@macro pulumi_compute_scale_set_standby_pool_scale_set_standby_pool_args_doc}
class ScaleSetStandbyPoolArgs {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final pulumi.Input<String> attachedVirtualMachineScaleSetId;
  /// An `elasticity_profile` block as defined below.
  final pulumi.Input<ScaleSetStandbyPoolElasticityProfile> elasticityProfile;
  /// Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Standby Pool.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  final pulumi.Input<String> virtualMachineState;

  /// Creates a new [ScaleSetStandbyPoolArgs].
  /// [attachedVirtualMachineScaleSetId] Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  /// [elasticityProfile] An `elasticity_profile` block as defined below.
  /// [location] Specifies the Azure Region where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [name] Specifies the name which should be used for this Standby Pool. Changing this forces a new Standby Pool to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Standby Pool should exist. Changing this forces a new Standby Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Standby Pool.
  /// [virtualMachineState] Specifies the desired state of virtual machines in the pool. Possible values are `Deallocated`, `Hibernated` and `Running`.
  ScaleSetStandbyPoolArgs({
    required this.attachedVirtualMachineScaleSetId,
    required this.elasticityProfile,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.virtualMachineState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedVirtualMachineScaleSetId': attachedVirtualMachineScaleSetId,
      'elasticityProfile': pulumi.Input.mapInputValue<ScaleSetStandbyPoolElasticityProfile, Map<String, dynamic>>(elasticityProfile, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualMachineState': virtualMachineState,
    };
  }

  factory ScaleSetStandbyPoolArgs.fromMap(Map<String, dynamic> map) {
    return ScaleSetStandbyPoolArgs(
      attachedVirtualMachineScaleSetId: (map['attachedVirtualMachineScaleSetId'] as String).input(),
      elasticityProfile: (ScaleSetStandbyPoolElasticityProfile.fromMap((map['elasticityProfile'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualMachineState: (map['virtualMachineState'] as String).input(),
    );
  }
}

