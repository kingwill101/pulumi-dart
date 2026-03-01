// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_iot_hub_serialization.dart';

/// Input properties used for looking up and filtering StreamInputIotHub resources.
class StreamInputIotHubState {
  /// The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  final pulumi.Input<String>? endpoint;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// The name or the URI of the IoT Hub.
  final pulumi.Input<String>? iothubNamespace;
  /// The name of the Stream Input IoTHub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<StreamInputIotHubSerialization>? serialization;
  /// The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;

  /// Creates a new [StreamInputIotHubState].
  /// [endpoint] The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  /// [eventhubConsumerGroupName] The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub.
  /// [iothubNamespace] The name or the URI of the IoT Hub.
  /// [name] The name of the Stream Input IoTHub. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  StreamInputIotHubState({
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? eventhubConsumerGroupName,
    pulumi.Output<String>? iothubNamespace,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<StreamInputIotHubSerialization>? serialization,
    pulumi.Output<String>? sharedAccessPolicyKey,
    pulumi.Output<String>? sharedAccessPolicyName,
    pulumi.Output<String>? streamAnalyticsJobName,
  }) :
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      iothubNamespace = pulumi.Input.asOptionalInput<String>(iothubNamespace),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<StreamInputIotHubSerialization>(serialization),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'iothubNamespace': ?iothubNamespace,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<StreamInputIotHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory StreamInputIotHubState.fromMap(Map<String, dynamic> map) {
    return StreamInputIotHubState(
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      iothubNamespace: map['iothubNamespace'] == null ? null : pulumi.Output.create<String>(map['iothubNamespace'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: map['serialization'] == null ? null : pulumi.Output.create<StreamInputIotHubSerialization>(StreamInputIotHubSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyKey'] as String),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
    );
  }
}

