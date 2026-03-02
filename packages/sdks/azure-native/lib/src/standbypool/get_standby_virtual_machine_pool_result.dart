// ignore_for_file: unused_element, unnecessary_cast

import 'standby_virtual_machine_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStandbyVirtualMachinePool.
class GetStandbyVirtualMachinePoolResult {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final String? attachedVirtualMachineScaleSetId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the elasticity profile of the standby virtual machine pools.
  final StandbyVirtualMachinePoolElasticityProfileResponse? elasticityProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the desired state of virtual machines in the pool.
  final String virtualMachineState;

  /// Creates a new [GetStandbyVirtualMachinePoolResult].
  /// [attachedVirtualMachineScaleSetId] Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [elasticityProfile] Specifies the elasticity profile of the standby virtual machine pools.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineState] Specifies the desired state of virtual machines in the pool.
  GetStandbyVirtualMachinePoolResult({
    this.attachedVirtualMachineScaleSetId,
    required this.azureApiVersion,
    this.elasticityProfile,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualMachineState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedVirtualMachineScaleSetId': ?attachedVirtualMachineScaleSetId,
      'azureApiVersion': azureApiVersion,
      'elasticityProfile': ?elasticityProfile == null ? null : elasticityProfile!.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachineState': virtualMachineState,
    };
  }

  factory GetStandbyVirtualMachinePoolResult.fromMap(Map<String, dynamic> map) {
    return GetStandbyVirtualMachinePoolResult(
      attachedVirtualMachineScaleSetId: map['attachedVirtualMachineScaleSetId'] == null ? null : map['attachedVirtualMachineScaleSetId']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      elasticityProfile: map['elasticityProfile'] == null ? null : StandbyVirtualMachinePoolElasticityProfileResponse.fromMap((map['elasticityProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualMachineState: map['virtualMachineState'] as String,
    );
  }
}

