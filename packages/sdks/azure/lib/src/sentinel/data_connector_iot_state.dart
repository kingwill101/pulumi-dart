// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorIot resources.
class DataConnectorIotState {
  /// The ID of the Log Analytics Workspace that this Iot Data Connector resides in. Changing this forces a new Iot Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Iot Data Connector. Changing this forces a new Iot Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [DataConnectorIotState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Iot Data Connector resides in. Changing this forces a new Iot Data Connector to be created.
  /// [name] The name which should be used for this Iot Data Connector. Changing this forces a new Iot Data Connector to be created.
  /// [subscriptionId] The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created.
  DataConnectorIotState({
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

  factory DataConnectorIotState.fromMap(Map<String, dynamic> map) {
    return DataConnectorIotState(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

