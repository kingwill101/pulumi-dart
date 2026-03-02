// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinate {
  final pulumi.Input<int>? x;
  final pulumi.Input<int>? y;

  /// Creates a new [EnterpriseCrmEventbusProtoCoordinate].
  /// [x] Optional.
  /// [y] Optional.
  EnterpriseCrmEventbusProtoCoordinate({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory EnterpriseCrmEventbusProtoCoordinate.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCoordinate(
      x: map['x'] == null ? null : (map['x'] as int).input(),
      y: map['y'] == null ? null : (map['y'] as int).input(),
    );
  }
}

