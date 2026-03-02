// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_authorization_rule_namespace_authorization_rule_args_doc}
/// The set of arguments for NamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_authorization_rule_namespace_authorization_rule_args_doc}
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
    this.listen,
    this.manage,
    this.name,
    required this.namespaceId,
    this.send,
  });

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
      listen: map['listen'] == null ? null : (map['listen'] as bool).input(),
      manage: map['manage'] == null ? null : (map['manage'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      send: map['send'] == null ? null : (map['send'] as bool).input(),
    );
  }
}

