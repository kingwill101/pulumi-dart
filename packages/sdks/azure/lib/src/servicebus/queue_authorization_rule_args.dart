// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_queue_authorization_rule_queue_authorization_rule_args_doc}
/// The set of arguments for QueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_queue_authorization_rule_queue_authorization_rule_args_doc}
class QueueAuthorizationRuleArgs {
  /// Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> queueId;
  /// Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [QueueAuthorizationRuleArgs].
  /// [listen] Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to `false`.
  /// [manage] Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  /// [queueId] Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created.
  /// [send] Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to `false`.
  QueueAuthorizationRuleArgs({
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    required pulumi.Output<String> queueId,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      queueId = pulumi.Input.asInput<String>(queueId),
      send = pulumi.Input.asOptionalInput<bool>(send);

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
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queueId: pulumi.Output.create<String>(map['queueId'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

