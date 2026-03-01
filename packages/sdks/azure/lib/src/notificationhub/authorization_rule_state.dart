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
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? notificationHubName,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asOptionalInput<String>(notificationHubName),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      send = pulumi.Input.asOptionalInput<bool>(send);

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
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      notificationHubName: map['notificationHubName'] == null ? null : pulumi.Output.create<String>(map['notificationHubName'] as String),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

