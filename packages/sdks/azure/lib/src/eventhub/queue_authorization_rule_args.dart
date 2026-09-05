// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_queue_authorization_rule_queue_authorization_rule_args_doc}
/// The set of arguments for QueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_queue_authorization_rule_queue_authorization_rule_args_doc}
class QueueAuthorizationRuleArgs {
  /// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool?>? listen;
  /// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool?>? manage;
  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> queueId;
  /// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool?>? send;

  /// Creates a new [QueueAuthorizationRuleArgs].
  /// [listen] Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  /// [manage] Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  /// [queueId] Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  /// [send] Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  const QueueAuthorizationRuleArgs({
    this.listen,
    this.manage,
    this.name,
    required this.queueId,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'queueId': queueId,
      'send': ?send,
    };
  }

  factory QueueAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return QueueAuthorizationRuleArgs(
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
