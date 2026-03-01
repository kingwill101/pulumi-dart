// ignore_for_file: unused_element, unnecessary_cast

import 'alerts_data_type_of_data_connector_response.dart';
import 'system_data_response.dart';

/// Result data returned by getASCDataConnector.
class GetASCDataConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The available data types for the connector.
  final AlertsDataTypeOfDataConnectorResponse? dataTypes;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The kind of the data connector
  /// Expected value is 'AzureSecurityCenter'.
  final String kind;
  /// The name of the resource
  final String name;
  /// The subscription id to connect to, and get the data from.
  final String? subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetASCDataConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataTypes] The available data types for the connector.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [subscriptionId] The subscription id to connect to, and get the data from.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetASCDataConnectorResult({
    required this.azureApiVersion,
    this.dataTypes,
    this.etag,
    required this.id,
    required this.kind,
    required this.name,
    this.subscriptionId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataTypes': ?dataTypes == null ? null : dataTypes!.toMap(),
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'name': name,
      'subscriptionId': ?subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetASCDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetASCDataConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataTypes: map['dataTypes'] == null ? null : AlertsDataTypeOfDataConnectorResponse.fromMap((map['dataTypes'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

