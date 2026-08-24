// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer.dart';
import 'queue_producer.dart';
import 'queue_settings.dart';

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// A Resource identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<QueueConsumer>?>? consumers;
  final pulumi.Input<double?>? consumersTotalCount;
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<String?>? modifiedOn;
  final pulumi.Input<List<QueueProducer>?>? producers;
  final pulumi.Input<double?>? producersTotalCount;
  final pulumi.Input<String?>? queueId;
  final pulumi.Input<String?>? queueName;
  final pulumi.Input<QueueSettings?>? settings;

  /// Creates a new [QueueState].
  /// [accountId] A Resource identifier.
  /// [consumers] Optional.
  /// [consumersTotalCount] Optional.
  /// [createdOn] Optional.
  /// [modifiedOn] Optional.
  /// [producers] Optional.
  /// [producersTotalCount] Optional.
  /// [queueId] Optional.
  /// [queueName] Optional.
  /// [settings] Optional.
  const QueueState({
    this.accountId,
    this.consumers,
    this.consumersTotalCount,
    this.createdOn,
    this.modifiedOn,
    this.producers,
    this.producersTotalCount,
    this.queueId,
    this.queueName,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'consumers': ?pulumi.Input.mapOptionalInputValue<List<QueueConsumer>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<QueueConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumersTotalCount': ?consumersTotalCount,
      'createdOn': ?createdOn,
      'modifiedOn': ?modifiedOn,
      'producers': ?pulumi.Input.mapOptionalInputValue<List<QueueProducer>, List<Map<String, dynamic>>>(producers, (value) => pulumi.Input.encodeList<QueueProducer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'producersTotalCount': ?producersTotalCount,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'settings': ?pulumi.Input.mapOptionalInputValue<QueueSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumers: (() { final guardedValue = map['consumers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueConsumer>(guardedValue, (value) => QueueConsumer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consumersTotalCount: (() { final guardedValue = map['consumersTotalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producers: (() { final guardedValue = map['producers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueProducer>(guardedValue, (value) => QueueProducer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      producersTotalCount: (() { final guardedValue = map['producersTotalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
