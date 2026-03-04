// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointInformationResponse {
  /// The endpoint.
  final pulumi.Input<String>? endpoint;

  /// The endpoint type.
  final pulumi.Input<String>? endpointType;

  /// The schema version.
  final pulumi.Input<String>? schemaVersion;

  /// Creates a new [EndpointInformationResponse].
  /// [endpoint] The endpoint.
  /// [endpointType] The endpoint type.
  /// [schemaVersion] The schema version.
  EndpointInformationResponse({
    this.endpoint,
    this.endpointType,
    this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
      'schemaVersion': ?schemaVersion,
    };
  }

  factory EndpointInformationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointInformationResponse(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointType: (() {
        final guardedValue = map['endpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaVersion: (() {
        final guardedValue = map['schemaVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
