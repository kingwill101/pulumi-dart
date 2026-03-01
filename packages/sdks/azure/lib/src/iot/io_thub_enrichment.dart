// ignore_for_file: unused_element, unnecessary_cast


class IoTHubEnrichment {
  /// The list of endpoints which will be enriched.
  final List<String> endpointNames;
  /// The key of the enrichment.
  final String key;
  /// The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  final String value;

  /// Creates a new [IoTHubEnrichment].
  /// [endpointNames] The list of endpoints which will be enriched.
  /// [key] The key of the enrichment.
  /// [value] The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  IoTHubEnrichment({
    required this.endpointNames,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointNames': endpointNames,
      'key': key,
      'value': value,
    };
  }

  factory IoTHubEnrichment.fromMap(Map<String, dynamic> map) {
    return IoTHubEnrichment(
      endpointNames: (map['endpointNames'] as List).cast<String>(),
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

