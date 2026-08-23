// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';

/// Endpoint message includes details of the Destination endpoint.
class EndPointResponse {
  /// The URI of the Endpoint.
  final pulumi.Input<String> endpointUri;
  /// List of Header to be added to the Endpoint.
  final pulumi.Input<List<HeaderResponse>> headers;

  /// Creates a new [EndPointResponse].
  /// [endpointUri] The URI of the Endpoint.
  /// [headers] List of Header to be added to the Endpoint.
  const EndPointResponse({
    required this.endpointUri,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': endpointUri,
      'headers': pulumi.Input.mapInputValue<List<HeaderResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndPointResponse.fromMap(Map<String, dynamic> map) {
    return EndPointResponse(
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderResponse>(map['headers']!, (value) => HeaderResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
