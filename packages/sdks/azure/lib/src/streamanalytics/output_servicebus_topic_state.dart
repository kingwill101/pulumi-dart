// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_servicebus_topic_serialization.dart';

/// Input properties used for looking up and filtering OutputServicebusTopic resources.
class OutputServicebusTopicState {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of property columns to add to the Service Bus Topic output.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<OutputServicebusTopicSerialization>? serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Topic, Service Bus Topic, etc.
  final pulumi.Input<String>? servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Topic Output.
  ///
  /// > **Note:** The acceptable keys are `ContentType`, `CorrelationId`, `Label`, `MessageId`, `PartitionKey`, `ReplyTo`, `ReplyToSessionId`, `ScheduledEnqueueTimeUtc`, `SessionId`, `TimeToLive` and `To`.
  final pulumi.Input<Map<String, String>>? systemPropertyColumns;
  /// The name of the Service Bus Topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [OutputServicebusTopicState].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [propertyColumns] A list of property columns to add to the Service Bus Topic output.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Topic, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [systemPropertyColumns] A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Topic Output.
  /// [topicName] The name of the Service Bus Topic.
  OutputServicebusTopicState({
    this.authenticationMode,
    this.name,
    this.propertyColumns,
    this.resourceGroupName,
    this.serialization,
    this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.streamAnalyticsJobName,
    this.systemPropertyColumns,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'name': ?name,
      'propertyColumns': ?propertyColumns,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<OutputServicebusTopicSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': ?servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'systemPropertyColumns': ?systemPropertyColumns,
      'topicName': ?topicName,
    };
  }

  factory OutputServicebusTopicState.fromMap(Map<String, dynamic> map) {
    return OutputServicebusTopicState(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      propertyColumns: map['propertyColumns'] == null ? null : ((map['propertyColumns']! as List).cast<String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serialization: map['serialization'] == null ? null : (OutputServicebusTopicSerialization.fromMap((map['serialization']! as Map).cast<String, dynamic>())).input(),
      servicebusNamespace: map['servicebusNamespace'] == null ? null : (map['servicebusNamespace']! as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey']! as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName']! as String).input(),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : (map['streamAnalyticsJobName']! as String).input(),
      systemPropertyColumns: map['systemPropertyColumns'] == null ? null : ((map['systemPropertyColumns']! as Map).cast<String, String>()).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

