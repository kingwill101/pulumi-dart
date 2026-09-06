// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_response.dart';
import 'job_error_action_response.dart';
import 'retry_policy_response.dart';
import 'service_bus_queue_message_response.dart';
import 'service_bus_topic_message_response.dart';
import 'storage_queue_message_response.dart';

class JobActionResponse {
  /// Gets or sets the error action.
  final pulumi.Input<JobErrorActionResponse?>? errorAction;
  /// Gets or sets the storage queue message.
  final pulumi.Input<StorageQueueMessageResponse?>? queueMessage;
  /// Gets or sets the http requests.
  final pulumi.Input<HttpRequestResponse?>? request;
  /// Gets or sets the retry policy.
  final pulumi.Input<RetryPolicyResponse?>? retryPolicy;
  /// Gets or sets the service bus queue message.
  final pulumi.Input<ServiceBusQueueMessageResponse?>? serviceBusQueueMessage;
  /// Gets or sets the service bus topic message.
  final pulumi.Input<ServiceBusTopicMessageResponse?>? serviceBusTopicMessage;
  /// Gets or sets the job action type.
  final pulumi.Input<String?>? type;

  /// Creates a new [JobActionResponse].
  /// [errorAction] Gets or sets the error action.
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job action type.
  const JobActionResponse({
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
      'errorAction': ?pulumi.Input.mapOptionalInputValue<JobErrorActionResponse, Map<String, dynamic>>(errorAction, (value) => value.toMap()),
      'queueMessage': ?pulumi.Input.mapOptionalInputValue<StorageQueueMessageResponse, Map<String, dynamic>>(queueMessage, (value) => value.toMap()),
      'request': ?pulumi.Input.mapOptionalInputValue<HttpRequestResponse, Map<String, dynamic>>(request, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceBusQueueMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusQueueMessageResponse, Map<String, dynamic>>(serviceBusQueueMessage, (value) => value.toMap()),
      'serviceBusTopicMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusTopicMessageResponse, Map<String, dynamic>>(serviceBusTopicMessage, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory JobActionResponse.fromMap(Map<String, dynamic> map) {
    return JobActionResponse(
      errorAction: (() { final guardedValue = map['errorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobErrorActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueMessage: (() { final guardedValue = map['queueMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageQueueMessageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusQueueMessage: (() { final guardedValue = map['serviceBusQueueMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusQueueMessageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusTopicMessage: (() { final guardedValue = map['serviceBusTopicMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusTopicMessageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
