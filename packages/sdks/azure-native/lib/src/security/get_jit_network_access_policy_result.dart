// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_policy_virtual_machine_response.dart';
import 'jit_network_access_request_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJitNetworkAccessPolicy.
class GetJitNetworkAccessPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of the resource
  final String? kind;
  /// Location where the resource is stored
  final String? location;
  /// The name of the resource
  final String? name;
  /// Gets the provisioning state of the Just-in-Time policy.
  final String? provisioningState;
  final List<JitNetworkAccessRequestResponse>? requests;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Configurations for Microsoft.Compute/virtualMachines resource type.
  final List<JitNetworkAccessPolicyVirtualMachineResponse>? virtualMachines;

  /// Creates a new [GetJitNetworkAccessPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state of the Just-in-Time policy.
  /// [requests] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachines] Configurations for Microsoft.Compute/virtualMachines resource type.
  const GetJitNetworkAccessPolicyResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.provisioningState,
    this.requests,
    this.systemData,
    this.type,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'requests': ?(() { final guardedValue = requests; if (guardedValue == null) return null; return pulumi.Input.encodeList<JitNetworkAccessRequestResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'virtualMachines': ?(() { final guardedValue = virtualMachines; if (guardedValue == null) return null; return pulumi.Input.encodeList<JitNetworkAccessPolicyVirtualMachineResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetJitNetworkAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetJitNetworkAccessPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitNetworkAccessRequestResponse>(guardedValue, (value) => JitNetworkAccessRequestResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitNetworkAccessPolicyVirtualMachineResponse>(guardedValue, (value) => JitNetworkAccessPolicyVirtualMachineResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
