// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_response.dart';
import 'retry_policy_response.dart';
import 'service_bus_queue_message_response.dart';
import 'service_bus_topic_message_response.dart';
import 'storage_queue_message_response.dart';

class JobErrorActionResponse {
  /// Gets or sets the storage queue message.
  final pulumi.Input<StorageQueueMessageResponse>? queueMessage;
  /// Gets or sets the http requests.
  final pulumi.Input<HttpRequestResponse>? request;
  /// Gets or sets the retry policy.
  final pulumi.Input<RetryPolicyResponse>? retryPolicy;
  /// Gets or sets the service bus queue message.
  final pulumi.Input<ServiceBusQueueMessageResponse>? serviceBusQueueMessage;
  /// Gets or sets the service bus topic message.
  final pulumi.Input<ServiceBusTopicMessageResponse>? serviceBusTopicMessage;
  /// Gets or sets the job error action type.
  final pulumi.Input<String>? type;

  /// Creates a new [JobErrorActionResponse].
  /// [queueMessage] Gets or sets the storage queue message.
  /// [request] Gets or sets the http requests.
  /// [retryPolicy] Gets or sets the retry policy.
  /// [serviceBusQueueMessage] Gets or sets the service bus queue message.
  /// [serviceBusTopicMessage] Gets or sets the service bus topic message.
  /// [type] Gets or sets the job error action type.
  JobErrorActionResponse({
    this.queueMessage,
    this.request,
    this.retryPolicy,
    this.serviceBusQueueMessage,
    this.serviceBusTopicMessage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queueMessage': ?pulumi.Input.mapOptionalInputValue<StorageQueueMessageResponse, Map<String, dynamic>>(queueMessage, (value) => value.toMap()),
      'request': ?pulumi.Input.mapOptionalInputValue<HttpRequestResponse, Map<String, dynamic>>(request, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceBusQueueMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusQueueMessageResponse, Map<String, dynamic>>(serviceBusQueueMessage, (value) => value.toMap()),
      'serviceBusTopicMessage': ?pulumi.Input.mapOptionalInputValue<ServiceBusTopicMessageResponse, Map<String, dynamic>>(serviceBusTopicMessage, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory JobErrorActionResponse.fromMap(Map<String, dynamic> map) {
    return JobErrorActionResponse(
      queueMessage: map['queueMessage'] == null ? null : (StorageQueueMessageResponse.fromMap((map['queueMessage'] as Map).cast<String, dynamic>())).input(),
      request: map['request'] == null ? null : (HttpRequestResponse.fromMap((map['request'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicyResponse.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      serviceBusQueueMessage: map['serviceBusQueueMessage'] == null ? null : (ServiceBusQueueMessageResponse.fromMap((map['serviceBusQueueMessage'] as Map).cast<String, dynamic>())).input(),
      serviceBusTopicMessage: map['serviceBusTopicMessage'] == null ? null : (ServiceBusTopicMessageResponse.fromMap((map['serviceBusTopicMessage'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

