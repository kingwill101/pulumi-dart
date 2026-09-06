// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'infrastructure_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_for_vminstance_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_instance_properties_response_availability_sets.dart';

/// Result data returned by getVirtualMachineInstance.
class GetVirtualMachineInstanceResult {
  /// Availability Sets in vm.
  final List<VirtualMachineInstancePropertiesResponseAvailabilitySets>? availabilitySets;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Hardware properties.
  final HardwareProfileResponse? hardwareProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Gets the infrastructure profile.
  final InfrastructureProfileResponse? infrastructureProfile;
  /// The name of the resource
  final String? name;
  /// Network properties.
  final NetworkProfileResponse? networkProfile;
  /// OS properties.
  final OsProfileForVMInstanceResponse? osProfile;
  /// Gets the power state of the virtual machine.
  final String? powerState;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// Storage properties.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetVirtualMachineInstanceResult].
  /// [availabilitySets] Availability Sets in vm.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Gets or sets the extended location.
  /// [hardwareProfile] Hardware properties.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [infrastructureProfile] Gets the infrastructure profile.
  /// [name] The name of the resource
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [powerState] Gets the power state of the virtual machine.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [storageProfile] Storage properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetVirtualMachineInstanceResult({
    this.availabilitySets,
    this.azureApiVersion,
    this.extendedLocation,
    this.hardwareProfile,
    this.id,
    this.infrastructureProfile,
    this.name,
    this.networkProfile,
    this.osProfile,
    this.powerState,
    this.provisioningState,
    this.storageProfile,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySets': ?(() { final guardedValue = availabilitySets; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachineInstancePropertiesResponseAvailabilitySets, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'id': ?id,
      'infrastructureProfile': ?infrastructureProfile?.toMap(),
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'powerState': ?powerState,
      'provisioningState': ?provisioningState,
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetVirtualMachineInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineInstanceResult(
      availabilitySets: (() { final guardedValue = map['availabilitySets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachineInstancePropertiesResponseAvailabilitySets>(guardedValue, (value) => VirtualMachineInstancePropertiesResponseAvailabilitySets.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      infrastructureProfile: (() { final guardedValue = map['infrastructureProfile']; if (guardedValue == null) return null; return InfrastructureProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OsProfileForVMInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
