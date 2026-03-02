// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_iot_hub_serialization.dart';

/// {@template pulumi_streamanalytics_stream_input_iot_hub_stream_input_iot_hub_args_doc}
/// The set of arguments for StreamInputIotHub.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_stream_input_iot_hub_stream_input_iot_hub_args_doc}
class StreamInputIotHubArgs {
  /// The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  final pulumi.Input<String> endpoint;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub.
  final pulumi.Input<String> eventhubConsumerGroupName;
  /// The name or the URI of the IoT Hub.
  final pulumi.Input<String> iothubNamespace;
  /// The name of the Stream Input IoTHub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<StreamInputIotHubSerialization> serialization;
  /// The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String> sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// Creates a new [StreamInputIotHubArgs].
  /// [endpoint] The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  /// [eventhubConsumerGroupName] The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub.
  /// [iothubNamespace] The name or the URI of the IoT Hub.
  /// [name] The name of the Stream Input IoTHub. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  StreamInputIotHubArgs({
    required this.endpoint,
    required this.eventhubConsumerGroupName,
    required this.iothubNamespace,
    this.name,
    required this.resourceGroupName,
    required this.serialization,
    required this.sharedAccessPolicyKey,
    required this.sharedAccessPolicyName,
    required this.streamAnalyticsJobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'eventhubConsumerGroupName': eventhubConsumerGroupName,
      'iothubNamespace': iothubNamespace,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serialization': pulumi.Input.mapInputValue<StreamInputIotHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'sharedAccessPolicyKey': sharedAccessPolicyKey,
      'sharedAccessPolicyName': sharedAccessPolicyName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
    };
  }

  factory StreamInputIotHubArgs.fromMap(Map<String, dynamic> map) {
    return StreamInputIotHubArgs(
      endpoint: (map['endpoint'] as String).input(),
      eventhubConsumerGroupName: (map['eventhubConsumerGroupName'] as String).input(),
      iothubNamespace: (map['iothubNamespace'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialization: (StreamInputIotHubSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())).input(),
      sharedAccessPolicyKey: (map['sharedAccessPolicyKey'] as String).input(),
      sharedAccessPolicyName: (map['sharedAccessPolicyName'] as String).input(),
      streamAnalyticsJobName: (map['streamAnalyticsJobName'] as String).input(),
    );
  }
}

