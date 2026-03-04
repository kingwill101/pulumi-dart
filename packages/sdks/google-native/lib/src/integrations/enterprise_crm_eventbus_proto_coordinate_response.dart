// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinateResponse {
  final pulumi.Input<int> x;
  final pulumi.Input<int> y;

  /// Creates a new [EnterpriseCrmEventbusProtoCoordinateResponse].
  /// [x] Required.
  /// [y] Required.
  EnterpriseCrmEventbusProtoCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': x, 'y': y};
  }

  factory EnterpriseCrmEventbusProtoCoordinateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoCoordinateResponse(
      x: pulumi.Input.fromValue(map['x'] as int),
      y: pulumi.Input.fromValue(map['y'] as int),
    );
  }
}
