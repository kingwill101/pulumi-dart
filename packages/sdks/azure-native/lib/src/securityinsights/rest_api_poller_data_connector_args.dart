// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsauth_model.dart';
import 'ccp_response_config.dart';
import 'dcrconfiguration.dart';
import 'rest_api_poller_request_config.dart';
import 'rest_api_poller_request_paging_config.dart';

/// {@template pulumi_securityinsights_rest_api_poller_data_connector_args_doc}
/// The set of arguments for RestApiPollerDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_rest_api_poller_data_connector_args_doc}
class RestApiPollerDataConnectorArgs {
  /// The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  final pulumi.Input<Map<String, String>>? addOnAttributes;
  /// The a authentication model.
  final pulumi.Input<AWSAuthModel> auth;
  /// The connector definition name (the dataConnectorDefinition resource id).
  final pulumi.Input<String> connectorDefinitionName;
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The Log Analytics table destination.
  final pulumi.Input<String>? dataType;
  /// The DCR related properties.
  final pulumi.Input<DCRConfiguration>? dcrConfig;
  /// Indicates whether the connector is active or not.
  final pulumi.Input<bool>? isActive;
  /// The kind of the data connector
  /// Expected value is 'RestApiPoller'.
  final pulumi.Input<String> kind;
  /// The paging configuration.
  final pulumi.Input<RestApiPollerRequestPagingConfig>? paging;
  /// The request configuration.
  final pulumi.Input<RestApiPollerRequestConfig> request;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The response configuration.
  final pulumi.Input<CcpResponseConfig>? response;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [RestApiPollerDataConnectorArgs].
  /// [addOnAttributes] The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  /// [auth] The a authentication model.
  /// [connectorDefinitionName] The connector definition name (the dataConnectorDefinition resource id).
  /// [dataConnectorId] Connector ID
  /// [dataType] The Log Analytics table destination.
  /// [dcrConfig] The DCR related properties.
  /// [isActive] Indicates whether the connector is active or not.
  /// [kind] The kind of the data connector
  /// [paging] The paging configuration.
  /// [request] The request configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [response] The response configuration.
  /// [workspaceName] The name of the workspace.
  RestApiPollerDataConnectorArgs({
    this.addOnAttributes,
    required this.auth,
    required this.connectorDefinitionName,
    this.dataConnectorId,
    this.dataType,
    this.dcrConfig,
    this.isActive,
    required this.kind,
    this.paging,
    required this.request,
    required this.resourceGroupName,
    this.response,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnAttributes': ?addOnAttributes,
      'auth': pulumi.Input.mapInputValue<AWSAuthModel, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'connectorDefinitionName': connectorDefinitionName,
      'dataConnectorId': ?dataConnectorId,
      'dataType': ?dataType,
      'dcrConfig': ?pulumi.Input.mapOptionalInputValue<DCRConfiguration, Map<String, dynamic>>(dcrConfig, (value) => value.toMap()),
      'isActive': ?isActive,
      'kind': kind,
      'paging': ?pulumi.Input.mapOptionalInputValue<RestApiPollerRequestPagingConfig, Map<String, dynamic>>(paging, (value) => value.toMap()),
      'request': pulumi.Input.mapInputValue<RestApiPollerRequestConfig, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'response': ?pulumi.Input.mapOptionalInputValue<CcpResponseConfig, Map<String, dynamic>>(response, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory RestApiPollerDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return RestApiPollerDataConnectorArgs(
      addOnAttributes: map['addOnAttributes'] == null ? null : ((map['addOnAttributes']! as Map).cast<String, String>()).input(),
      auth: (AWSAuthModel.fromMap((map['auth'] as Map).cast<String, dynamic>())).input(),
      connectorDefinitionName: (map['connectorDefinitionName'] as String).input(),
      dataConnectorId: map['dataConnectorId'] == null ? null : (map['dataConnectorId']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      dcrConfig: map['dcrConfig'] == null ? null : (DCRConfiguration.fromMap((map['dcrConfig']! as Map).cast<String, dynamic>())).input(),
      isActive: map['isActive'] == null ? null : (map['isActive']! as bool).input(),
      kind: (map['kind'] as String).input(),
      paging: map['paging'] == null ? null : (RestApiPollerRequestPagingConfig.fromMap((map['paging']! as Map).cast<String, dynamic>())).input(),
      request: (RestApiPollerRequestConfig.fromMap((map['request'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      response: map['response'] == null ? null : (CcpResponseConfig.fromMap((map['response']! as Map).cast<String, dynamic>())).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

