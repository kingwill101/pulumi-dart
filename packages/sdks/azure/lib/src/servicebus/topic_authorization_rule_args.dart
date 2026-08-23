// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_topic_authorization_rule_topic_authorization_rule_args_doc}
/// The set of arguments for TopicAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_topic_authorization_rule_topic_authorization_rule_args_doc}
class TopicAuthorizationRuleArgs {
  /// Grants listen access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Grants send access to this this Authorization Rule. Defaults to `false`.
  final pulumi.Input<bool>? send;
  /// Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicAuthorizationRuleArgs].
  /// [listen] Grants listen access to this this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  /// [send] Grants send access to this this Authorization Rule. Defaults to `false`.
  /// [topicId] Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  const TopicAuthorizationRuleArgs({
    this.listen,
    this.manage,
    this.name,
    this.send,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'send': ?send,
      'topicId': topicId,
    };
  }

  factory TopicAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return TopicAuthorizationRuleArgs(
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      topicId: pulumi.Input.fromValue(map['topicId'] as String),
    );
  }
}
