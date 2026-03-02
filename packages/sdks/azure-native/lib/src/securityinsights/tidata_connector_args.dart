// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tidata_connector_data_types.dart';

/// {@template pulumi_securityinsights_tidata_connector_args_doc}
/// The set of arguments for TIDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_tidata_connector_args_doc}
class TIDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<TIDataConnectorDataTypes> dataTypes;
  /// The kind of the data connector
  /// Expected value is 'ThreatIntelligence'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The lookback period for the feed to be imported.
  final pulumi.Input<String>? tipLookbackPeriod;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [TIDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [tipLookbackPeriod] The lookback period for the feed to be imported.
  /// [workspaceName] The name of the workspace.
  TIDataConnectorArgs({
    this.dataConnectorId,
    required this.dataTypes,
    required this.kind,
    required this.resourceGroupName,
    required this.tenantId,
    this.tipLookbackPeriod,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': pulumi.Input.mapInputValue<TIDataConnectorDataTypes, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'tipLookbackPeriod': ?tipLookbackPeriod,
      'workspaceName': workspaceName,
    };
  }

  factory TIDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return TIDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] == null ? null : (map['dataConnectorId']! as String).input(),
      dataTypes: (TIDataConnectorDataTypes.fromMap((map['dataTypes'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      tipLookbackPeriod: map['tipLookbackPeriod'] == null ? null : (map['tipLookbackPeriod']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

