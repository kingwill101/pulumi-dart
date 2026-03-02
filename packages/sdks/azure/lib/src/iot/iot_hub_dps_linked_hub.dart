// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IotHubDpsLinkedHub {
  /// The weight applied to the IoT Hub. Defaults to `1`.
  final pulumi.Input<int>? allocationWeight;
  /// Determines whether to apply allocation policies to the IoT Hub. Defaults to `true`.
  final pulumi.Input<bool>? applyAllocationPolicy;
  /// The connection string to connect to the IoT Hub.
  final pulumi.Input<String> connectionString;
  /// The IoT Hub hostname.
  final pulumi.Input<String>? hostname;
  /// The location of the IoT hub.
  final pulumi.Input<String> location;

  /// Creates a new [IotHubDpsLinkedHub].
  /// [allocationWeight] The weight applied to the IoT Hub. Defaults to `1`.
  /// [applyAllocationPolicy] Determines whether to apply allocation policies to the IoT Hub. Defaults to `true`.
  /// [connectionString] The connection string to connect to the IoT Hub.
  /// [hostname] The IoT Hub hostname.
  /// [location] The location of the IoT hub.
  IotHubDpsLinkedHub({
    this.allocationWeight,
    this.applyAllocationPolicy,
    required this.connectionString,
    this.hostname,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationWeight': ?allocationWeight,
      'applyAllocationPolicy': ?applyAllocationPolicy,
      'connectionString': connectionString,
      'hostname': ?hostname,
      'location': location,
    };
  }

  factory IotHubDpsLinkedHub.fromMap(Map<String, dynamic> map) {
    return IotHubDpsLinkedHub(
      allocationWeight: map['allocationWeight'] == null ? null : (map['allocationWeight']! as int).input(),
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : (map['applyAllocationPolicy']! as bool).input(),
      connectionString: (map['connectionString'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}

