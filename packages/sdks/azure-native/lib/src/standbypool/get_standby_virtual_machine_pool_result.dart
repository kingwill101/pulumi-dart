// ignore_for_file: unused_element, unnecessary_cast

import 'standby_virtual_machine_pool_elasticity_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStandbyVirtualMachinePool.
class GetStandbyVirtualMachinePoolResult {
  /// Specifies the fully qualified resource ID of a virtual machine scale set the pool is attached to.
  final String? attachedVirtualMachineScaleSetId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the elasticity profile of the standby virtual machine pools.
  final StandbyVirtualMachinePoolElasticityProfileResponse? elasticityProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Specifies the desired state of virtual machines in the pool.
  final String? virtualMachineState;

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
  const GetStandbyVirtualMachinePoolResult({
    this.attachedVirtualMachineScaleSetId,
    this.azureApiVersion,
    this.elasticityProfile,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachineState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedVirtualMachineScaleSetId': ?attachedVirtualMachineScaleSetId,
      'azureApiVersion': ?azureApiVersion,
      'elasticityProfile': ?elasticityProfile?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachineState': ?virtualMachineState,
    };
  }

  factory GetStandbyVirtualMachinePoolResult.fromMap(Map<String, dynamic> map) {
    return GetStandbyVirtualMachinePoolResult(
      attachedVirtualMachineScaleSetId: (() { final guardedValue = map['attachedVirtualMachineScaleSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticityProfile: (() { final guardedValue = map['elasticityProfile']; if (guardedValue == null) return null; return StandbyVirtualMachinePoolElasticityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineState: (() { final guardedValue = map['virtualMachineState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
