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
    this.eventhubEndpointName,
    this.iothubName,
    this.name,
    this.resourceGroupName,
  });

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
      eventhubEndpointName: (() {
        final guardedValue = map['eventhubEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iothubName: (() {
        final guardedValue = map['iothubName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
