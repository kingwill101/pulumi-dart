// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_event_hub_v2_serialization.dart';

/// {@template pulumi_streamanalytics_stream_input_event_hub_v2_stream_input_event_hub_v2_args_doc}
/// The set of arguments for StreamInputEventHubV2.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_stream_input_event_hub_v2_stream_input_event_hub_v2_args_doc}
class StreamInputEventHubV2Args {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// The name of the Event Hub.
  final pulumi.Input<String> eventhubName;
  /// The name of the Stream Input EventHub V2. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The property the input Event Hub has been partitioned by.
  final pulumi.Input<String>? partitionKey;
  /// A `serialization` block as defined below.
  final pulumi.Input<StreamInputEventHubV2Serialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [StreamInputEventHubV2Args].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [eventhubConsumerGroupName] The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group.
  /// [eventhubName] The name of the Event Hub.
  /// [name] The name of the Stream Input EventHub V2. Changing this forces a new resource to be created.
  /// [partitionKey] The property the input Event Hub has been partitioned by.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [streamAnalyticsJobId] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  StreamInputEventHubV2Args({
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? eventhubConsumerGroupName,
    required pulumi.Output<String> eventhubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKey,
    required pulumi.Output<StreamInputEventHubV2Serialization> serialization,
    required pulumi.Output<String> servicebusNamespace,
    pulumi.Output<String>? sharedAccessPolicyKey,
    pulumi.Output<String>? sharedAccessPolicyName,
    required pulumi.Output<String> streamAnalyticsJobId,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      serialization = pulumi.Input.asInput<StreamInputEventHubV2Serialization>(serialization),
      servicebusNamespace = pulumi.Input.asInput<String>(servicebusNamespace),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobId = pulumi.Input.asInput<String>(streamAnalyticsJobId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'serialization': pulumi.Input.mapInputValue<StreamInputEventHubV2Serialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory StreamInputEventHubV2Args.fromMap(Map<String, dynamic> map) {
    return StreamInputEventHubV2Args(
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      serialization: pulumi.Output.create<StreamInputEventHubV2Serialization>(StreamInputEventHubV2Serialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      servicebusNamespace: pulumi.Output.create<String>(map['servicebusNamespace'] as String),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyKey'] as String),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      streamAnalyticsJobId: pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
    );
  }
}

