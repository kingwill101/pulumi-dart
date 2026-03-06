// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';

/// Define the Connectors target endpoint.
class DestinationConfigResponse {
  /// The destinations for the key.
  final pulumi.Input<List<DestinationResponse>> destinations;
  /// The key is the destination identifier that is supported by the Connector.
  final pulumi.Input<String> key;

  /// Creates a new [DestinationConfigResponse].
  /// [destinations] The destinations for the key.
  /// [key] The key is the destination identifier that is supported by the Connector.
  const DestinationConfigResponse({
    required this.destinations,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<DestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': key,
    };
  }

  factory DestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<DestinationResponse>(map['destinations']!, (value) => DestinationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

