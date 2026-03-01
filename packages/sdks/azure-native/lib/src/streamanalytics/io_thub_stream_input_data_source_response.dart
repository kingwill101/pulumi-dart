// ignore_for_file: unused_element, unnecessary_cast


/// Describes an IoT Hub input data source that contains stream data.
class IoTHubStreamInputDataSourceResponse {
  /// The name of an IoT Hub Consumer Group that should be used to read events from the IoT Hub. If not specified, the input uses the Iot Hub’s default consumer group.
  final String? consumerGroupName;
  /// The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  final String? endpoint;
  /// The name or the URI of the IoT Hub. Required on PUT (CreateOrReplace) requests.
  final String? iotHubNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyKey;
  /// The shared access policy name for the IoT Hub. This policy must contain at least the Service connect permission. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyName;
  /// Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Devices/IotHubs'.
  final String type;

  /// Creates a new [IoTHubStreamInputDataSourceResponse].
  /// [consumerGroupName] The name of an IoT Hub Consumer Group that should be used to read events from the IoT Hub. If not specified, the input uses the Iot Hub’s default consumer group.
  /// [endpoint] The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  /// [iotHubNamespace] The name or the URI of the IoT Hub. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the IoT Hub. This policy must contain at least the Service connect permission. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  IoTHubStreamInputDataSourceResponse({
    this.consumerGroupName,
    this.endpoint,
    this.iotHubNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': ?consumerGroupName,
      'endpoint': ?endpoint,
      'iotHubNamespace': ?iotHubNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'type': type,
    };
  }

  factory IoTHubStreamInputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return IoTHubStreamInputDataSourceResponse(
      consumerGroupName: map['consumerGroupName'] == null ? null : map['consumerGroupName'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      iotHubNamespace: map['iotHubNamespace'] == null ? null : map['iotHubNamespace'] as String,
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : map['sharedAccessPolicyKey'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : map['sharedAccessPolicyName'] as String,
      type: map['type'] as String,
    );
  }
}

