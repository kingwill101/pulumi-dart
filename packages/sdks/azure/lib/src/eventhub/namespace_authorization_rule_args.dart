// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_namespace_authorization_rule_namespace_authorization_rule_args_doc}
/// The set of arguments for NamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_authorization_rule_namespace_authorization_rule_args_doc}
class NamespaceAuthorizationRuleArgs {
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> namespaceId;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [NamespaceAuthorizationRuleArgs].
  /// [listen] Grants listen access to this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created.
  /// [send] Grants send access to this Authorization Rule. Defaults to `false`.
  NamespaceAuthorizationRuleArgs({
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceId': namespaceId,
      'send': ?send,
    };
  }

  factory NamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleArgs(
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

