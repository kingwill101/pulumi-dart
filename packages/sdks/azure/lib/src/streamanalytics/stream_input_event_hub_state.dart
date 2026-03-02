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
    this.authenticationMode,
    this.eventhubConsumerGroupName,
    this.eventhubName,
    this.name,
    this.partitionKey,
    this.resourceGroupName,
    this.serialization,
    this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.streamAnalyticsJobName,
  });

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
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : (map['eventhubConsumerGroupName']! as String).input(),
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serialization: map['serialization'] == null ? null : (StreamInputEventHubSerialization.fromMap((map['serialization']! as Map).cast<String, dynamic>())).input(),
      servicebusNamespace: map['servicebusNamespace'] == null ? null : (map['servicebusNamespace']! as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey']! as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName']! as String).input(),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : (map['streamAnalyticsJobName']! as String).input(),
    );
  }
}

