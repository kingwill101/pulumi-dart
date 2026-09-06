// ignore_for_file: unused_element, unnecessary_cast

import 'connector_error_definition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getACSSBackupConnection.
class GetACSSBackupConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Information about the recovery services vault and backup policy used for backup.
  final dynamic backupData;
  /// Defines the errors related to backup connection resource of virtual instance for SAP.
  final ConnectorErrorDefinitionResponse? errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Defines the provisioning states.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetACSSBackupConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupData] Information about the recovery services vault and backup policy used for backup.
  /// [errors] Defines the errors related to backup connection resource of virtual instance for SAP.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetACSSBackupConnectionResult({
    this.azureApiVersion,
    this.backupData,
    this.errors,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backupData': ?backupData,
      'errors': ?errors?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetACSSBackupConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetACSSBackupConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupData: (() { final guardedValue = map['backupData']; if (guardedValue == null) return null; return guardedValue; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return ConnectorErrorDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
