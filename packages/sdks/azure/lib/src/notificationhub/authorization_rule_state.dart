// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthorizationRule resources.
class AuthorizationRuleState {
  /// Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  ///
  /// > **Note:** If `manage` is set to `true` then both `send` and `listen` must also be set to `true`.
  final pulumi.Input<bool>? manage;
  /// The name to use for this Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;
  /// The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? notificationHubName;
  /// The Primary Access Key associated with this Authorization Rule.
  final pulumi.Input<String>? primaryAccessKey;
  /// The Primary Connetion String associated with this Authorization Rule.
  final pulumi.Input<String>? primaryConnectionString;
  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Access Key associated with this Authorization Rule.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The Secondary Connetion String associated with this Authorization Rule.
  final pulumi.Input<String>? secondaryConnectionString;
  /// Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [AuthorizationRuleState].
  /// [listen] Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  /// [manage] Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  /// [name] The name to use for this Authorization Rule. Changing this forces a new resource to be created.
  /// [namespaceName] The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created.
  /// [notificationHubName] The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created.
  /// [primaryAccessKey] The Primary Access Key associated with this Authorization Rule.
  /// [primaryConnectionString] The Primary Connetion String associated with this Authorization Rule.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The Secondary Access Key associated with this Authorization Rule.
  /// [secondaryConnectionString] The Secondary Connetion String associated with this Authorization Rule.
  /// [send] Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`.
  AuthorizationRuleState({
    this.listen,
    this.manage,
    this.name,
    this.namespaceName,
    this.notificationHubName,
    this.primaryAccessKey,
    this.primaryConnectionString,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.secondaryConnectionString,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'notificationHubName': ?notificationHubName,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'send': ?send,
    };
  }

  factory AuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleState(
      listen: map['listen'] == null ? null : (map['listen']! as bool).input(),
      manage: map['manage'] == null ? null : (map['manage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      notificationHubName: map['notificationHubName'] == null ? null : (map['notificationHubName']! as String).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      send: map['send'] == null ? null : (map['send']! as bool).input(),
    );
  }
}

