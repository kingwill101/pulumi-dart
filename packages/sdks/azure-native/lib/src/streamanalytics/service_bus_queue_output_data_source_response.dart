// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Service Bus Queue output data source.
class ServiceBusQueueOutputDataSourceResponse {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;
  /// A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The name of the Service Bus Queue. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? queueName;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The system properties associated with the Service Bus Queue. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  final pulumi.Input<dynamic>? systemPropertyColumns;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.ServiceBus/Queue'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceBusQueueOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [propertyColumns] A string array of the names of output columns to be attached to Service Bus messages as custom properties.
  /// [queueName] The name of the Service Bus Queue. Required on PUT (CreateOrReplace) requests.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [systemPropertyColumns] The system properties associated with the Service Bus Queue. The following system properties are supported: ReplyToSessionId, ContentType, To, Subject, CorrelationId, TimeToLive, PartitionKey, SessionId, ScheduledEnqueueTime, MessageId, ReplyTo, Label, ScheduledEnqueueTimeUtc.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  ServiceBusQueueOutputDataSourceResponse({
    this.authenticationMode,
    this.propertyColumns,
    this.queueName,
    this.serviceBusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.systemPropertyColumns,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'propertyColumns': ?propertyColumns,
      'queueName': ?queueName,
      'serviceBusNamespace': ?serviceBusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'systemPropertyColumns': ?systemPropertyColumns,
      'type': type,
    };
  }

  factory ServiceBusQueueOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusQueueOutputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      propertyColumns: map['propertyColumns'] == null ? null : ((map['propertyColumns']! as List).cast<String>()).input(),
      queueName: map['queueName'] == null ? null : (map['queueName']! as String).input(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : (map['serviceBusNamespace']! as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey']! as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName']! as String).input(),
      systemPropertyColumns: map['systemPropertyColumns'] == null ? null : (map['systemPropertyColumns']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

