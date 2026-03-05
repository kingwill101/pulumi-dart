// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubEnrichment {
  /// The list of endpoints which will be enriched.
  final pulumi.Input<List<String>> endpointNames;
  /// The key of the enrichment.
  final pulumi.Input<String> key;
  /// The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  final pulumi.Input<String> value;

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
      endpointNames: pulumi.Input.fromValue((map['endpointNames'] as List).cast<String>()),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

