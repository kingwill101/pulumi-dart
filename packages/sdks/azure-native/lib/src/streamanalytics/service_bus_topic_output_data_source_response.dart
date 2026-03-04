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

  factory ServiceBusTopicOutputDataSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceBusTopicOutputDataSourceResponse(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      propertyColumns: (() {
        final guardedValue = map['propertyColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceBusNamespace: (() {
        final guardedValue = map['serviceBusNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccessPolicyKey: (() {
        final guardedValue = map['sharedAccessPolicyKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccessPolicyName: (() {
        final guardedValue = map['sharedAccessPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemPropertyColumns: (() {
        final guardedValue = map['systemPropertyColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      topicName: (() {
        final guardedValue = map['topicName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
