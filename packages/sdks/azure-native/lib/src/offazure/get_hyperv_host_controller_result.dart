// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHypervHostController.
class GetHypervHostControllerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the timestamp marking Hyper-V host creation.
  final String? createdTimestamp;
  /// Gets the errors.
  final List<HealthErrorDetailsResponse>? errors;
  /// Gets or sets the FQDN/IPAddress of the Hyper-V host.
  final String? fqdn;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets or sets the run as account ID of the Hyper-V host.
  final String? runAsAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Gets the timestamp marking last updated on the Hyper-V host.
  final String? updatedTimestamp;
  /// Gets the version of the Hyper-V host.
  final String? version;

  /// Creates a new [GetHypervHostControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimestamp] Gets the timestamp marking Hyper-V host creation.
  /// [errors] Gets the errors.
  /// [fqdn] Gets or sets the FQDN/IPAddress of the Hyper-V host.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [runAsAccountId] Gets or sets the run as account ID of the Hyper-V host.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedTimestamp] Gets the timestamp marking last updated on the Hyper-V host.
  /// [version] Gets the version of the Hyper-V host.
  const GetHypervHostControllerResult({
    this.azureApiVersion,
    this.createdTimestamp,
    this.errors,
    this.fqdn,
    this.id,
    this.name,
    this.provisioningState,
    this.runAsAccountId,
    this.systemData,
    this.type,
    this.updatedTimestamp,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdTimestamp': ?createdTimestamp,
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<HealthErrorDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fqdn': ?fqdn,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'runAsAccountId': ?runAsAccountId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedTimestamp': ?updatedTimestamp,
      'version': ?version,
    };
  }

  factory GetHypervHostControllerResult.fromMap(Map<String, dynamic> map) {
    return GetHypervHostControllerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HealthErrorDetailsResponse>(guardedValue, (value) => HealthErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedTimestamp: (() { final guardedValue = map['updatedTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
