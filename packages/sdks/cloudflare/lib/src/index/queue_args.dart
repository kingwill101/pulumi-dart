// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_settings.dart';

/// {@template pulumi_index_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_index_queue_queue_args_doc}
class QueueArgs {
  /// A Resource identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> queueName;
  final pulumi.Input<QueueSettings?>? settings;

  /// Creates a new [QueueArgs].
  /// [accountId] A Resource identifier.
  /// [queueName] Required.
  /// [settings] Optional.
  const QueueArgs({
    required this.accountId,
    required this.queueName,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'queueName': queueName,
      'settings': ?pulumi.Input.mapOptionalInputValue<QueueSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
