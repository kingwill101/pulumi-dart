// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration detail of coordinate, it used for UI
class GoogleCloudIntegrationsV1alphaCoordinate {
  /// X axis of the coordinate
  final pulumi.Input<int> x;
  /// Y axis of the coordinate
  final pulumi.Input<int> y;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCoordinate].
  /// [x] X axis of the coordinate
  /// [y] Y axis of the coordinate
  GoogleCloudIntegrationsV1alphaCoordinate({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory GoogleCloudIntegrationsV1alphaCoordinate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCoordinate(
      x: (map['x'] as int).input(),
      y: (map['y'] as int).input(),
    );
  }
}

