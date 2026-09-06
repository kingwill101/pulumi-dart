// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWorkspaceManagerAssignment.
class GetWorkspaceManagerAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Etag.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// List of resources included in this workspace manager assignment
  final List<AssignmentItemResponse>? items;
  /// The time the last job associated to this assignment ended at
  final String? lastJobEndTime;
  /// State of the last job associated to this assignment
  final String? lastJobProvisioningState;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The resource name of the workspace manager group targeted by the workspace manager assignment
  final String? targetResourceName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceManagerAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [items] List of resources included in this workspace manager assignment
  /// [lastJobEndTime] The time the last job associated to this assignment ended at
  /// [lastJobProvisioningState] State of the last job associated to this assignment
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetResourceName] The resource name of the workspace manager group targeted by the workspace manager assignment
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceManagerAssignmentResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.items,
    this.lastJobEndTime,
    this.lastJobProvisioningState,
    this.name,
    this.systemData,
    this.targetResourceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<AssignmentItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastJobEndTime': ?lastJobEndTime,
      'lastJobProvisioningState': ?lastJobProvisioningState,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'targetResourceName': ?targetResourceName,
      'type': ?type,
    };
  }

  factory GetWorkspaceManagerAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssignmentItemResponse>(guardedValue, (value) => AssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastJobEndTime: (() { final guardedValue = map['lastJobEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastJobProvisioningState: (() { final guardedValue = map['lastJobProvisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
