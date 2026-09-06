// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The dashboard's part position.
class DashboardPartsPositionResponse {
  /// The dashboard's part column span.
  final pulumi.Input<int> colSpan;
  /// The dashboard part's metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The dashboard's part row span.
  final pulumi.Input<int> rowSpan;
  /// The dashboard's part x coordinate.
  final pulumi.Input<int> x;
  /// The dashboard's part y coordinate.
  final pulumi.Input<int> y;

  /// Creates a new [DashboardPartsPositionResponse].
  /// [colSpan] The dashboard's part column span.
  /// [metadata] The dashboard part's metadata.
  /// [rowSpan] The dashboard's part row span.
  /// [x] The dashboard's part x coordinate.
  /// [y] The dashboard's part y coordinate.
  const DashboardPartsPositionResponse({
    required this.colSpan,
    this.metadata,
    required this.rowSpan,
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colSpan': colSpan,
      'metadata': ?metadata,
      'rowSpan': rowSpan,
      'x': x,
      'y': y,
    };
  }

  factory DashboardPartsPositionResponse.fromMap(Map<String, dynamic> map) {
    return DashboardPartsPositionResponse(
      colSpan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['colSpan'])),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rowSpan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rowSpan'])),
      x: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['x'])),
      y: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['y'])),
    );
  }
}
