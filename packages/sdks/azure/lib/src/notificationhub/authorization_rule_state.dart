// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthorizationRule resources.
class AuthorizationRuleState {
  /// Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  ///
  /// &gt; **Note:** If `manage` is set to `true` then both `send` and `listen` must also be set to `true`.
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
  const AuthorizationRuleState({
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
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationHubName: (() { final guardedValue = map['notificationHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
