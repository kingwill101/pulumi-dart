// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';

/// Endpoint message includes details of the Destination endpoint.
class EndPoint {
  /// The URI of the Endpoint.
  final pulumi.Input<String>? endpointUri;
  /// List of Header to be added to the Endpoint.
  final pulumi.Input<List<Header>>? headers;

  /// Creates a new [EndPoint].
  /// [endpointUri] The URI of the Endpoint.
  /// [headers] List of Header to be added to the Endpoint.
  EndPoint({
    this.endpointUri,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': ?endpointUri,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<Header>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<Header, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndPoint.fromMap(Map<String, dynamic> map) {
    return EndPoint(
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Header>(guardedValue, (value) => Header.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

