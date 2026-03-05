// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'tidata_connector_data_types_response.dart';

/// Result data returned by getTIDataConnector.
class GetTIDataConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The available data types for the connector.
  final TIDataConnectorDataTypesResponse dataTypes;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The kind of the data connector
  /// Expected value is 'ThreatIntelligence'.
  final String kind;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tenant id to connect to, and get the data from.
  final String tenantId;
  /// The lookback period for the feed to be imported.
  final String? tipLookbackPeriod;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTIDataConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataTypes] The available data types for the connector.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [tipLookbackPeriod] The lookback period for the feed to be imported.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTIDataConnectorResult({
    required this.azureApiVersion,
    required this.dataTypes,
    this.etag,
    required this.id,
    required this.kind,
    required this.name,
    required this.systemData,
    required this.tenantId,
    this.tipLookbackPeriod,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataTypes': dataTypes.toMap(),
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'name': name,
      'systemData': systemData.toMap(),
      'tenantId': tenantId,
      'tipLookbackPeriod': ?tipLookbackPeriod,
      'type': type,
    };
  }

  factory GetTIDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetTIDataConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataTypes: TIDataConnectorDataTypesResponse.fromMap((map['dataTypes']! as Map).cast<String, dynamic>()),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
      tipLookbackPeriod: (() { final guardedValue = map['tipLookbackPeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

