// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDisasterRecoveryConfig.
class GetDisasterRecoveryConfigResult {
  /// Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final String? alternateName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final String? partnerNamespace;
  /// Number of entities pending to be replicated.
  final double? pendingReplicationOperationsCount;
  /// Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  final String? provisioningState;
  /// role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  final String? role;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDisasterRecoveryConfigResult].
  /// [alternateName] Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [partnerNamespace] ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [pendingReplicationOperationsCount] Number of entities pending to be replicated.
  /// [provisioningState] Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  /// [role] role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDisasterRecoveryConfigResult({
    this.alternateName,
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.partnerNamespace,
    this.pendingReplicationOperationsCount,
    this.provisioningState,
    this.role,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'partnerNamespace': ?partnerNamespace,
      'pendingReplicationOperationsCount': ?pendingReplicationOperationsCount,
      'provisioningState': ?provisioningState,
      'role': ?role,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDisasterRecoveryConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigResult(
      alternateName: (() { final guardedValue = map['alternateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerNamespace: (() { final guardedValue = map['partnerNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingReplicationOperationsCount: (() { final guardedValue = map['pendingReplicationOperationsCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
