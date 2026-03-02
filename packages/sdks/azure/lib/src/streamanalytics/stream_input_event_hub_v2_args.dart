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
    this.authenticationMode,
    this.eventhubConsumerGroupName,
    required this.eventhubName,
    this.name,
    this.partitionKey,
    required this.serialization,
    required this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.streamAnalyticsJobId,
  });

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
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : (map['eventhubConsumerGroupName']! as String).input(),
      eventhubName: (map['eventhubName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey']! as String).input(),
      serialization: (StreamInputEventHubV2Serialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())).input(),
      servicebusNamespace: (map['servicebusNamespace'] as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey']! as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName']! as String).input(),
      streamAnalyticsJobId: (map['streamAnalyticsJobId'] as String).input(),
    );
  }
}

