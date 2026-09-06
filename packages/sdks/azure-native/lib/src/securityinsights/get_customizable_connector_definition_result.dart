// ignore_for_file: unused_element, unnecessary_cast

import 'customizable_connections_config_response.dart';
import 'customizable_connector_ui_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomizableConnectorDefinition.
class GetCustomizableConnectorDefinitionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The UiConfig for 'Customizable' connector definition kind.
  final CustomizableConnectionsConfigResponse? connectionsConfig;
  /// The UiConfig for 'Customizable' connector definition kind.
  final CustomizableConnectorUiConfigResponse? connectorUiConfig;
  /// Gets or sets the connector definition created date in UTC format.
  final String? createdTimeUtc;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of the data connector definitions
  /// Expected value is 'Customizable'.
  final String? kind;
  /// Gets or sets the connector definition last modified date in UTC format.
  final String? lastModifiedUtc;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCustomizableConnectorDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionsConfig] The UiConfig for 'Customizable' connector definition kind.
  /// [connectorUiConfig] The UiConfig for 'Customizable' connector definition kind.
  /// [createdTimeUtc] Gets or sets the connector definition created date in UTC format.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the data connector definitions
  /// [lastModifiedUtc] Gets or sets the connector definition last modified date in UTC format.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCustomizableConnectorDefinitionResult({
    this.azureApiVersion,
    this.connectionsConfig,
    this.connectorUiConfig,
    this.createdTimeUtc,
    this.etag,
    this.id,
    this.kind,
    this.lastModifiedUtc,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionsConfig': ?connectionsConfig?.toMap(),
      'connectorUiConfig': ?connectorUiConfig?.toMap(),
      'createdTimeUtc': ?createdTimeUtc,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'lastModifiedUtc': ?lastModifiedUtc,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCustomizableConnectorDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetCustomizableConnectorDefinitionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionsConfig: (() { final guardedValue = map['connectionsConfig']; if (guardedValue == null) return null; return CustomizableConnectionsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      connectorUiConfig: (() { final guardedValue = map['connectorUiConfig']; if (guardedValue == null) return null; return CustomizableConnectorUiConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdTimeUtc: (() { final guardedValue = map['createdTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedUtc: (() { final guardedValue = map['lastModifiedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
