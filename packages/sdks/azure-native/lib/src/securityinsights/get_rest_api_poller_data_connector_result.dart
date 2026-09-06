// ignore_for_file: unused_element, unnecessary_cast

import 'ccp_response_config_response.dart';
import 'dcrconfiguration_response.dart';
import 'rest_api_poller_request_config_response.dart';
import 'rest_api_poller_request_paging_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRestApiPollerDataConnector.
class GetRestApiPollerDataConnectorResult {
  /// The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  final Map<String, String>? addOnAttributes;
  /// The a authentication model.
  final dynamic auth;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The connector definition name (the dataConnectorDefinition resource id).
  final String? connectorDefinitionName;
  /// The Log Analytics table destination.
  final String? dataType;
  /// The DCR related properties.
  final DCRConfigurationResponse? dcrConfig;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates whether the connector is active or not.
  final bool? isActive;
  /// The kind of the data connector
  /// Expected value is 'RestApiPoller'.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// The paging configuration.
  final RestApiPollerRequestPagingConfigResponse? paging;
  /// The request configuration.
  final RestApiPollerRequestConfigResponse? request;
  /// The response configuration.
  final CcpResponseConfigResponse? response;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRestApiPollerDataConnectorResult].
  /// [addOnAttributes] The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  /// [auth] The a authentication model.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorDefinitionName] The connector definition name (the dataConnectorDefinition resource id).
  /// [dataType] The Log Analytics table destination.
  /// [dcrConfig] The DCR related properties.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isActive] Indicates whether the connector is active or not.
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [paging] The paging configuration.
  /// [request] The request configuration.
  /// [response] The response configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRestApiPollerDataConnectorResult({
    this.addOnAttributes,
    this.auth,
    this.azureApiVersion,
    this.connectorDefinitionName,
    this.dataType,
    this.dcrConfig,
    this.etag,
    this.id,
    this.isActive,
    this.kind,
    this.name,
    this.paging,
    this.request,
    this.response,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnAttributes': ?addOnAttributes,
      'auth': ?auth,
      'azureApiVersion': ?azureApiVersion,
      'connectorDefinitionName': ?connectorDefinitionName,
      'dataType': ?dataType,
      'dcrConfig': ?dcrConfig?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'isActive': ?isActive,
      'kind': ?kind,
      'name': ?name,
      'paging': ?paging?.toMap(),
      'request': ?request?.toMap(),
      'response': ?response?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRestApiPollerDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetRestApiPollerDataConnectorResult(
      addOnAttributes: (() { final guardedValue = map['addOnAttributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorDefinitionName: (() { final guardedValue = map['connectorDefinitionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dcrConfig: (() { final guardedValue = map['dcrConfig']; if (guardedValue == null) return null; return DCRConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paging: (() { final guardedValue = map['paging']; if (guardedValue == null) return null; return RestApiPollerRequestPagingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return RestApiPollerRequestConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return CcpResponseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
