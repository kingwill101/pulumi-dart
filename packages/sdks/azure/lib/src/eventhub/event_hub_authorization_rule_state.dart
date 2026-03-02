// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventHubAuthorizationRule resources.
class EventHubAuthorizationRuleState {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubName;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;
  /// The Primary Connection String for the Event Hubs authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs authorization Rule.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Connection String for the Event Hubs Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs Authorization Rule.
  final pulumi.Input<String>? secondaryKey;
  /// Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [EventHubAuthorizationRuleState].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [listen] Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  /// [manage] Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [primaryConnectionString] The Primary Connection String for the Event Hubs authorization Rule.
  /// [primaryConnectionStringAlias] The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled.
  /// [primaryKey] The Primary Key for the Event Hubs authorization Rule.
  /// [resourceGroupName] The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  /// [secondaryConnectionString] The Secondary Connection String for the Event Hubs Authorization Rule.
  /// [secondaryConnectionStringAlias] The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled.
  /// [secondaryKey] The Secondary Key for the Event Hubs Authorization Rule.
  /// [send] Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  EventHubAuthorizationRuleState({
    this.eventhubName,
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.primaryConnectionString,
    this.primaryConnectionStringAlias,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryConnectionStringAlias,
    this.secondaryKey,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': ?eventhubName,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryConnectionStringAlias': ?primaryConnectionStringAlias,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryConnectionStringAlias': ?secondaryConnectionStringAlias,
      'secondaryKey': ?secondaryKey,
      'send': ?send,
    };
  }

  factory EventHubAuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return EventHubAuthorizationRuleState(
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName']! as String).input(),
      listen: map['listen'] == null ? null : (map['listen']! as bool).input(),
      manage: map['manage'] == null ? null : (map['manage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryConnectionStringAlias: map['primaryConnectionStringAlias'] == null ? null : (map['primaryConnectionStringAlias']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryConnectionStringAlias: map['secondaryConnectionStringAlias'] == null ? null : (map['secondaryConnectionStringAlias']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      send: map['send'] == null ? null : (map['send']! as bool).input(),
    );
  }
}

