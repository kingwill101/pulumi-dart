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
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? propertyColumns,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<OutputServicebusTopicSerialization>? serialization,
    pulumi.Output<String>? servicebusNamespace,
    pulumi.Output<String>? sharedAccessPolicyKey,
    pulumi.Output<String>? sharedAccessPolicyName,
    pulumi.Output<String>? streamAnalyticsJobName,
    pulumi.Output<Map<String, String>>? systemPropertyColumns,
    pulumi.Output<String>? topicName,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      propertyColumns = pulumi.Input.asOptionalInput<List<String>>(propertyColumns),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<OutputServicebusTopicSerialization>(serialization),
      servicebusNamespace = pulumi.Input.asOptionalInput<String>(servicebusNamespace),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName),
      systemPropertyColumns = pulumi.Input.asOptionalInput<Map<String, String>>(systemPropertyColumns),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

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
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      propertyColumns: map['propertyColumns'] == null ? null : pulumi.Output.create<List<String>>((map['propertyColumns'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: map['serialization'] == null ? null : pulumi.Output.create<OutputServicebusTopicSerialization>(OutputServicebusTopicSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      servicebusNamespace: map['servicebusNamespace'] == null ? null : pulumi.Output.create<String>(map['servicebusNamespace'] as String),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyKey'] as String),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      systemPropertyColumns: map['systemPropertyColumns'] == null ? null : pulumi.Output.create<Map<String, String>>((map['systemPropertyColumns'] as Map).cast<String, String>()),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

