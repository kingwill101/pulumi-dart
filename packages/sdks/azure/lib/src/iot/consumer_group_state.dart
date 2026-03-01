// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerGroup resources.
class ConsumerGroupState {
  /// The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubEndpointName;
  /// The name of the IoT Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// The name of this Consumer Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ConsumerGroupState].
  /// [eventhubEndpointName] The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created.
  /// [iothubName] The name of the IoT Hub. Changing this forces a new resource to be created.
  /// [name] The name of this Consumer Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created.
  ConsumerGroupState({
    pulumi.Output<String>? eventhubEndpointName,
    pulumi.Output<String>? iothubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      eventhubEndpointName = pulumi.Input.asOptionalInput<String>(eventhubEndpointName),
      iothubName = pulumi.Input.asOptionalInput<String>(iothubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubEndpointName': ?eventhubEndpointName,
      'iothubName': ?iothubName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ConsumerGroupState.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupState(
      eventhubEndpointName: map['eventhubEndpointName'] == null ? null : pulumi.Output.create<String>(map['eventhubEndpointName'] as String),
      iothubName: map['iothubName'] == null ? null : pulumi.Output.create<String>(map['iothubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

