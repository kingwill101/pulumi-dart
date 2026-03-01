// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_authorization_rule_get_authorization_rule_args_doc}
/// Arguments for getAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_authorization_rule_get_authorization_rule_args_doc}
class GetAuthorizationRuleArgs {
  /// Specifies the name of the EventHub.
  final pulumi.Input<String> eventhubName;
  final pulumi.Input<bool>? listen;
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the EventHub Authorization Rule resource. be created.
  final pulumi.Input<String> name;
  /// Specifies the name of the grandparent EventHub Namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Authorization Rule's grandparent Namespace exists.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<bool>? send;

  /// Creates a new [GetAuthorizationRuleArgs].
  /// [eventhubName] Specifies the name of the EventHub.
  /// [listen] Optional.
  /// [manage] Optional.
  /// [name] Specifies the name of the EventHub Authorization Rule resource. be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace.
  /// [resourceGroupName] The name of the resource group in which the EventHub Authorization Rule's grandparent Namespace exists.
  /// [send] Optional.
  GetAuthorizationRuleArgs({
    required pulumi.Output<String> eventhubName,
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    required pulumi.Output<String> name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? send,
  }) :
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'listen': ?listen,
      'manage': ?manage,
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory GetAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationRuleArgs(
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

