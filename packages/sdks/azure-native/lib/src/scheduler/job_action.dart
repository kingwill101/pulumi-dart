// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request.dart';
import 'job_action_type.dart';
import 'job_error_action.dart';
import 'retry_policy.dart';
import 'service_bus_queue_message.dart';
import 'service_bus_topic_message.dart';
import 'storage_queue_message.dart';

class JobAction {
  /// Gets or sets the error action.
  final pulumi.Input<JobErrorAction>? errorAction;
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
  /// Gets or sets the job action type.
  final pulumi.Input<JobActionType>? type;

  /// Creates a new [JobAction].
  /// [errorAction] Gets or sets the error action.
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job action type.
  const JobAction({
    this.errorAction,
    this.queueMessage,
    this.request,
    this.retryPolicy,
    this.serviceBusQueueMessage,
    this.serviceBusTopicMessage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorAction': ?pulumi.Input.mapOptionalInputValue<JobErrorAction, Map<String, dynamic>>(errorAction, (value) => value.toMap()),
      'queueMessage': ?pulumi.Input.mapOptionalInputValue<StorageQueueMessage, Map<String, dynamic>>(queueMessage, (value) => value.toMap()),
      'request': ?pulumi.Input.mapOptionalInputValue<HttpRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceBusQueueMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusQueueMessage, Map<String, dynamic>>(serviceBusQueueMessage, (value) => value.toMap()),
      'serviceBusTopicMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusTopicMessage, Map<String, dynamic>>(serviceBusTopicMessage, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<JobActionType, String>(type, (value) => value.wireValue),
    };
  }

  factory JobAction.fromMap(Map<String, dynamic> map) {
    return JobAction(
      errorAction: (() { final guardedValue = map['errorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobErrorAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueMessage: (() { final guardedValue = map['queueMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageQueueMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusQueueMessage: (() { final guardedValue = map['serviceBusQueueMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusQueueMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusTopicMessage: (() { final guardedValue = map['serviceBusTopicMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusTopicMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobActionType.fromValue(guardedValue as String)); })(),
    );
  }
}
