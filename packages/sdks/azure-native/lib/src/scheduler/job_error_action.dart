// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request.dart';
import 'job_action_type.dart';
import 'retry_policy.dart';
import 'service_bus_queue_message.dart';
import 'service_bus_topic_message.dart';
import 'storage_queue_message.dart';

class JobErrorAction {
  /// Gets or sets the storage queue message.
  final pulumi.Input<StorageQueueMessage>? queueMessage;
  /// Gets or sets the http requests.
  final pulumi.Input<HttpRequest>? request;
  /// Gets or sets the retry policy.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  /// Gets or sets the service bus queue message.
  final pulumi.Input<ServiceBusQueueMessage>? serviceBusQueueMessage;
  /// Gets or sets the service bus topic message.
  final pulumi.Input<ServiceBusTopicMessage>? serviceBusTopicMessage;
  /// Gets or sets the job error action type.
  final pulumi.Input<JobActionType>? type;

  /// Creates a new [JobErrorAction].
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job error action type.
  JobErrorAction({
    this.queueMessage,
    this.request,
    this.retryPolicy,
    this.serviceBusQueueMessage,
    this.serviceBusTopicMessage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueMessage': ?pulumi.Input.mapOptionalInputValue<StorageQueueMessage, Map<String, dynamic>>(queueMessage, (value) => value.toMap()),
      'request': ?pulumi.Input.mapOptionalInputValue<HttpRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceBusQueueMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusQueueMessage, Map<String, dynamic>>(serviceBusQueueMessage, (value) => value.toMap()),
      'serviceBusTopicMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusTopicMessage, Map<String, dynamic>>(serviceBusTopicMessage, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<JobActionType, String>(type, (value) => value.value),
    };
  }

  factory JobErrorAction.fromMap(Map<String, dynamic> map) {
    return JobErrorAction(
      queueMessage: map['queueMessage'] == null ? null : (StorageQueueMessage.fromMap((map['queueMessage']! as Map).cast<String, dynamic>())).input(),
      request: map['request'] == null ? null : (HttpRequest.fromMap((map['request']! as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicy.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
      serviceBusQueueMessage: map['serviceBusQueueMessage'] == null ? null : (ServiceBusQueueMessage.fromMap((map['serviceBusQueueMessage']! as Map).cast<String, dynamic>())).input(),
      serviceBusTopicMessage: map['serviceBusTopicMessage'] == null ? null : (ServiceBusTopicMessage.fromMap((map['serviceBusTopicMessage']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (JobActionType.fromValue(map['type']! as String)).input(),
    );
  }
}

