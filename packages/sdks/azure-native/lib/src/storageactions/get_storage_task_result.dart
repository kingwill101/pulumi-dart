// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'storage_task_action_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageTask.
class GetStorageTaskResult {
  /// The storage task action that is executed
  final StorageTaskActionResponse? action;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date and time of the storage task in UTC.
  final String? creationTimeInUtc;
  /// Text that describes the purpose of the storage task
  final String? description;
  /// Storage Task is enabled when set to true and disabled when set to false
  final bool? enabled;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identity of the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Represents the provisioning state of the storage task.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Storage task version.
  final double? taskVersion;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStorageTaskResult].
  /// [action] The storage task action that is executed
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTimeInUtc] The creation date and time of the storage task in UTC.
  /// [description] Text that describes the purpose of the storage task
  /// [enabled] Storage Task is enabled when set to true and disabled when set to false
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Represents the provisioning state of the storage task.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [taskVersion] Storage task version.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStorageTaskResult({
    this.action,
    this.azureApiVersion,
    this.creationTimeInUtc,
    this.description,
    this.enabled,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.taskVersion,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'creationTimeInUtc': ?creationTimeInUtc,
      'description': ?description,
      'enabled': ?enabled,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'taskVersion': ?taskVersion,
      'type': ?type,
    };
  }

  factory GetStorageTaskResult.fromMap(Map<String, dynamic> map) {
    return GetStorageTaskResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return StorageTaskActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimeInUtc: (() { final guardedValue = map['creationTimeInUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      taskVersion: (() { final guardedValue = map['taskVersion']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
