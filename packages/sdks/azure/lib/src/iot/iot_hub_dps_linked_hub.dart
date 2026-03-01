// ignore_for_file: unused_element, unnecessary_cast


class IotHubDpsLinkedHub {
  /// The weight applied to the IoT Hub. Defaults to `1`.
  final int? allocationWeight;
  /// Determines whether to apply allocation policies to the IoT Hub. Defaults to `true`.
  final bool? applyAllocationPolicy;
  /// The connection string to connect to the IoT Hub.
  final String connectionString;
  /// The IoT Hub hostname.
  final String? hostname;
  /// The location of the IoT hub.
  final String location;

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
      allocationWeight: map['allocationWeight'] == null ? null : map['allocationWeight'] as int,
      applyAllocationPolicy: map['applyAllocationPolicy'] == null ? null : map['applyAllocationPolicy'] as bool,
      connectionString: map['connectionString'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      location: map['location'] as String,
    );
  }
}

