// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_topic_authorization_rule_topic_authorization_rule_args_doc}
/// The set of arguments for TopicAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_topic_authorization_rule_topic_authorization_rule_args_doc}
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
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicAuthorizationRuleArgs].
  /// [listen] Grants listen access to this this Authorization Rule. Defaults to `false`.
  /// [manage] Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  /// [send] Grants send access to this this Authorization Rule. Defaults to `false`.
  /// [topicId] Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  TopicAuthorizationRuleArgs({
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
      listen: map['listen'] == null ? null : (map['listen']! as bool).input(),
      manage: map['manage'] == null ? null : (map['manage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      send: map['send'] == null ? null : (map['send']! as bool).input(),
      topicId: (map['topicId'] as String).input(),
    );
  }
}

