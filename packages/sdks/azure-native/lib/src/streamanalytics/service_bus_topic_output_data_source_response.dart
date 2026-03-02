// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Service Bus Topic output data source.
class ServiceBusTopicOutputDataSourceResponse {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;
  /// A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The system properties associated with the Service Bus Topic Output. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  final pulumi.Input<Map<String, String>>? systemPropertyColumns;
  /// The name of the Service Bus Topic. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? topicName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.ServiceBus/Topic'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceBusTopicOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [propertyColumns] A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [systemPropertyColumns] The system properties associated with the Service Bus Topic Output. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  /// [topicName] The name of the Service Bus Topic. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  ServiceBusTopicOutputDataSourceResponse({
    this.authenticationMode,
    this.propertyColumns,
    this.serviceBusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.systemPropertyColumns,
    this.topicName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'propertyColumns': ?propertyColumns,
      'serviceBusNamespace': ?serviceBusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'systemPropertyColumns': ?systemPropertyColumns,
      'topicName': ?topicName,
      'type': type,
    };
  }

  factory ServiceBusTopicOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicOutputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      propertyColumns: map['propertyColumns'] == null ? null : ((map['propertyColumns'] as List).cast<String>()).input(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : (map['serviceBusNamespace'] as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey'] as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName'] as String).input(),
      systemPropertyColumns: map['systemPropertyColumns'] == null ? null : ((map['systemPropertyColumns'] as Map).cast<String, String>()).input(),
      topicName: map['topicName'] == null ? null : (map['topicName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

