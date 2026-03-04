// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorAzureSecurityCenter resources.
class DataConnectorAzureSecurityCenterState {
  /// The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;

  /// The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String>? name;

  /// The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [DataConnectorAzureSecurityCenterState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created.
  /// [name] The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created.
  /// [subscriptionId] The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created.
  DataConnectorAzureSecurityCenterState({
    this.logAnalyticsWorkspaceId,
    this.name,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory DataConnectorAzureSecurityCenterState.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataConnectorAzureSecurityCenterState(
      logAnalyticsWorkspaceId: (() {
        final guardedValue = map['logAnalyticsWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
