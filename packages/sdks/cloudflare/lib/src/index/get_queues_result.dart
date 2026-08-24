// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queues_result_consumer.dart';
import 'get_queues_result_producer.dart';
import 'get_queues_result_settings.dart';

class GetQueuesResult {
  final pulumi.Input<List<GetQueuesResultConsumer>> consumers;
  final pulumi.Input<double> consumersTotalCount;
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedOn;
  final pulumi.Input<List<GetQueuesResultProducer>> producers;
  final pulumi.Input<double> producersTotalCount;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String> queueName;
  final pulumi.Input<GetQueuesResultSettings> settings;

  /// Creates a new [GetQueuesResult].
  /// [consumers] Required.
  /// [consumersTotalCount] Required.
  /// [createdOn] Required.
  /// [id] Required.
  /// [modifiedOn] Required.
  /// [producers] Required.
  /// [producersTotalCount] Required.
  /// [queueId] Required.
  /// [queueName] Required.
  /// [settings] Required.
  const GetQueuesResult({
    required this.consumers,
    required this.consumersTotalCount,
    required this.createdOn,
    required this.id,
    required this.modifiedOn,
    required this.producers,
    required this.producersTotalCount,
    required this.queueId,
    required this.queueName,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': pulumi.Input.mapInputValue<List<GetQueuesResultConsumer>, List<Map<String, dynamic>>>(consumers, (value) => pulumi.Input.encodeList<GetQueuesResultConsumer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumersTotalCount': consumersTotalCount,
      'createdOn': createdOn,
      'id': id,
      'modifiedOn': modifiedOn,
      'producers': pulumi.Input.mapInputValue<List<GetQueuesResultProducer>, List<Map<String, dynamic>>>(producers, (value) => pulumi.Input.encodeList<GetQueuesResultProducer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'producersTotalCount': producersTotalCount,
      'queueId': queueId,
      'queueName': queueName,
      'settings': pulumi.Input.mapInputValue<GetQueuesResultSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      consumers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetQueuesResultConsumer>(map['consumers']!, (value) => GetQueuesResultConsumer.fromMap((value as Map).cast<String, dynamic>()))),
      consumersTotalCount: pulumi.Input.fromValue((map['consumersTotalCount'] as num).toDouble()),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      producers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetQueuesResultProducer>(map['producers']!, (value) => GetQueuesResultProducer.fromMap((value as Map).cast<String, dynamic>()))),
      producersTotalCount: pulumi.Input.fromValue((map['producersTotalCount'] as num).toDouble()),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      settings: pulumi.Input.fromValue(GetQueuesResultSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
    );
  }
}
