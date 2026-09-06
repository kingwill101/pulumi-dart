// ignore_for_file: unused_element, unnecessary_cast

import 'alerts_data_type_of_data_connector_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAATPDataConnector.
class GetAATPDataConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The available data types for the connector.
  final AlertsDataTypeOfDataConnectorResponse? dataTypes;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of the data connector
  /// Expected value is 'AzureAdvancedThreatProtection'.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tenant id to connect to, and get the data from.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAATPDataConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataTypes] The available data types for the connector.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAATPDataConnectorResult({
    this.azureApiVersion,
    this.dataTypes,
    this.etag,
    this.id,
    this.kind,
    this.name,
    this.systemData,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataTypes': ?dataTypes?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetAATPDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAATPDataConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return AlertsDataTypeOfDataConnectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
