// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_azure_security_center_data_connector_azure_security_center_args_doc}
/// The set of arguments for DataConnectorAzureSecurityCenter.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_azure_security_center_data_connector_azure_security_center_args_doc}
class DataConnectorAzureSecurityCenterArgs {
  /// The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [DataConnectorAzureSecurityCenterArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created.
  /// [name] The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created.
  /// [subscriptionId] The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created.
  DataConnectorAzureSecurityCenterArgs({
    required pulumi.Output<String> logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? subscriptionId,
  }) :
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory DataConnectorAzureSecurityCenterArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorAzureSecurityCenterArgs(
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

