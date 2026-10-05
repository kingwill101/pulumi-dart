// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration detail of coordinate, it used for UI
class GoogleCloudIntegrationsV1alphaCoordinateResponse {
  /// X axis of the coordinate
  final pulumi.Input<int> x;
  /// Y axis of the coordinate
  final pulumi.Input<int> y;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCoordinateResponse].
  /// [x] X axis of the coordinate
  /// [y] Y axis of the coordinate
  const GoogleCloudIntegrationsV1alphaCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory GoogleCloudIntegrationsV1alphaCoordinateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCoordinateResponse(
      x: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['x'])),
      y: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['y'])),
    );
  }
}
