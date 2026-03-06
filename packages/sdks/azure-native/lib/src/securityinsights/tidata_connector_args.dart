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
  const TIDataConnectorArgs({
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
      dataConnectorId: (() { final guardedValue = map['dataConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: pulumi.Input.fromValue(TIDataConnectorDataTypes.fromMap((map['dataTypes']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      tipLookbackPeriod: (() { final guardedValue = map['tipLookbackPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

