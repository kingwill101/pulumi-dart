// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVcenterController.
class GetVcenterControllerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the timestamp marking vCenter creation.
  final String createdTimestamp;
  /// Gets the errors.
  final List<HealthErrorDetailsResponse> errors;
  /// Gets or sets the FQDN/IPAddress of the vCenter.
  final String? fqdn;
  /// Gets or sets the friendly name of the vCenter.
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Gets the instance UUID of the vCenter.
  final String instanceUuid;
  /// The name of the resource
  final String name;
  /// Gets the performance statistics enabled on the vCenter.
  final String perfStatisticsLevel;
  /// Gets or sets the port of the vCenter.
  final String? port;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets or sets the run as account ID of the vCenter.
  final String? runAsAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets the timestamp marking last updated on the vCenter.
  final String updatedTimestamp;
  /// Gets the version of the vCenter.
  final String version;

  /// Creates a new [GetVcenterControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Gets the timestamp marking vCenter creation.
  /// [errors] Gets the errors.
  /// [fqdn] Gets or sets the FQDN/IPAddress of the vCenter.
  /// [friendlyName] Gets or sets the friendly name of the vCenter.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceUuid] Gets the instance UUID of the vCenter.
  /// [name] The name of the resource
  /// [perfStatisticsLevel] Gets the performance statistics enabled on the vCenter.
  /// [port] Gets or sets the port of the vCenter.
  /// [provisioningState] The status of the last operation.
  /// [runAsAccountId] Gets or sets the run as account ID of the vCenter.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Gets the timestamp marking last updated on the vCenter.
  /// [version] Gets the version of the vCenter.
  GetVcenterControllerResult({
    required this.azureApiVersion,
    required this.createdTimestamp,
    required this.errors,
    this.fqdn,
    this.friendlyName,
    required this.id,
    required this.instanceUuid,
    required this.name,
    required this.perfStatisticsLevel,
    this.port,
    this.provisioningState,
    this.runAsAccountId,
    required this.systemData,
    required this.type,
    required this.updatedTimestamp,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTimestamp': createdTimestamp,
      'errors': pulumi.Input.encodeList<HealthErrorDetailsResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'fqdn': ?fqdn,
      'friendlyName': ?friendlyName,
      'id': id,
      'instanceUuid': instanceUuid,
      'name': name,
      'perfStatisticsLevel': perfStatisticsLevel,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'runAsAccountId': ?runAsAccountId,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedTimestamp': updatedTimestamp,
      'version': version,
    };
  }

  factory GetVcenterControllerResult.fromMap(Map<String, dynamic> map) {
    return GetVcenterControllerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTimestamp: map['createdTimestamp'] as String,
      errors: pulumi.Input.decodeList<HealthErrorDetailsResponse>(map['errors']!, (value) => HealthErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      instanceUuid: map['instanceUuid'] as String,
      name: map['name'] as String,
      perfStatisticsLevel: map['perfStatisticsLevel'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
      version: map['version'] as String,
    );
  }
}

