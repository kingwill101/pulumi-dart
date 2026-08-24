// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_consumer.dart';
import 'get_queue_producer.dart';
import 'get_queue_settings.dart';

/// Result data returned by getQueue.
class GetQueueResult {
  /// A Resource identifier.
  final String? accountId;
  final List<GetQueueConsumer>? consumers;
  final double? consumersTotalCount;
  final String? createdOn;
  /// A Resource identifier.
  final String? id;
  final String? modifiedOn;
  final List<GetQueueProducer>? producers;
  final double? producersTotalCount;
  /// A Resource identifier.
  final String? queueId;
  final String? queueName;
  final GetQueueSettings? settings;

  /// Creates a new [GetQueueResult].
  /// [accountId] A Resource identifier.
  /// [consumers] Optional.
  /// [consumersTotalCount] Optional.
  /// [createdOn] Optional.
  /// [id] A Resource identifier.
  /// [modifiedOn] Optional.
  /// [producers] Optional.
  /// [producersTotalCount] Optional.
  /// [queueId] A Resource identifier.
  /// [queueName] Optional.
  /// [settings] Optional.
  const GetQueueResult({
    this.accountId,
    this.consumers,
    this.consumersTotalCount,
    this.createdOn,
    this.id,
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
      'consumers': ?(() { final guardedValue = consumers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQueueConsumer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumersTotalCount': ?consumersTotalCount,
      'createdOn': ?createdOn,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'producers': ?(() { final guardedValue = producers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQueueProducer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'producersTotalCount': ?producersTotalCount,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'settings': ?settings?.toMap(),
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumers: (() { final guardedValue = map['consumers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQueueConsumer>(guardedValue, (value) => GetQueueConsumer.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumersTotalCount: (() { final guardedValue = map['consumersTotalCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producers: (() { final guardedValue = map['producers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQueueProducer>(guardedValue, (value) => GetQueueProducer.fromMap((value as Map).cast<String, dynamic>())); })(),
      producersTotalCount: (() { final guardedValue = map['producersTotalCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return GetQueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
