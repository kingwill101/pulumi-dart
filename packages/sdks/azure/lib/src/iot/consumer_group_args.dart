// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_consumer_group_consumer_group_args_doc}
/// The set of arguments for ConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_iot_consumer_group_consumer_group_args_doc}
class ConsumerGroupArgs {
  /// The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubEndpointName;
  /// The name of the IoT Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// The name of this Consumer Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConsumerGroupArgs].
  /// [eventhubEndpointName] The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created.
  /// [iothubName] The name of the IoT Hub. Changing this forces a new resource to be created.
  /// [name] The name of this Consumer Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created.
  ConsumerGroupArgs({
    required this.eventhubEndpointName,
    required this.iothubName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubEndpointName': eventhubEndpointName,
      'iothubName': iothubName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupArgs(
      eventhubEndpointName: pulumi.Input.fromValue(map['eventhubEndpointName'] as String),
      iothubName: pulumi.Input.fromValue(map['iothubName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

