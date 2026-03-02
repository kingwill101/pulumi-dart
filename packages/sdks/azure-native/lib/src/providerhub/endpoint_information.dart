// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointInformation {
  /// The endpoint.
  final pulumi.Input<String>? endpoint;
  /// The endpoint type.
  final pulumi.Input<String>? endpointType;
  /// The schema version.
  final pulumi.Input<String>? schemaVersion;

  /// Creates a new [EndpointInformation].
  /// [endpoint] The endpoint.
  /// [endpointType] The endpoint type.
  /// [schemaVersion] The schema version.
  EndpointInformation({
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

  factory EndpointInformation.fromMap(Map<String, dynamic> map) {
    return EndpointInformation(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      schemaVersion: map['schemaVersion'] == null ? null : (map['schemaVersion'] as String).input(),
    );
  }
}

