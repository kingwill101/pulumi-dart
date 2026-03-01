// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_event_hub_serialization.dart';

/// Input properties used for looking up and filtering StreamInputEventHub resources.
class StreamInputEventHubState {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// The name of the Event Hub.
  final pulumi.Input<String>? eventhubName;
  /// The name of the Stream Input EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The property the input Event Hub has been partitioned by.
  final pulumi.Input<String>? partitionKey;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<StreamInputEventHubSerialization>? serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String>? servicebusNamespace;
  /// The shared access policy key for the specified shared access policy.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;

  /// Creates a new [StreamInputEventHubState].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [eventhubConsumerGroupName] The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group.
  /// [eventhubName] The name of the Event Hub.
  /// [name] The name of the Stream Input EventHub. Changing this forces a new resource to be created.
  /// [partitionKey] The property the input Event Hub has been partitioned by.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  StreamInputEventHubState({
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? eventhubConsumerGroupName,
    pulumi.Output<String>? eventhubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<StreamInputEventHubSerialization>? serialization,
    pulumi.Output<String>? servicebusNamespace,
    pulumi.Output<String>? sharedAccessPolicyKey,
    pulumi.Output<String>? sharedAccessPolicyName,
    pulumi.Output<String>? streamAnalyticsJobName,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asOptionalInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<StreamInputEventHubSerialization>(serialization),
      servicebusNamespace = pulumi.Input.asOptionalInput<String>(servicebusNamespace),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': ?eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<StreamInputEventHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': ?servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory StreamInputEventHubState.fromMap(Map<String, dynamic> map) {
    return StreamInputEventHubState(
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      eventhubName: map['eventhubName'] == null ? null : pulumi.Output.create<String>(map['eventhubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: map['serialization'] == null ? null : pulumi.Output.create<StreamInputEventHubSerialization>(StreamInputEventHubSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      servicebusNamespace: map['servicebusNamespace'] == null ? null : pulumi.Output.create<String>(map['servicebusNamespace'] as String),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyKey'] as String),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
    );
  }
}

