// ignore_for_file: unused_element, unnecessary_cast


/// The dashboard's part position.
class DashboardPartsPosition {
  /// The dashboard's part column span.
  final int colSpan;
  /// The dashboard part's metadata.
  final dynamic metadata;
  /// The dashboard's part row span.
  final int rowSpan;
  /// The dashboard's part x coordinate.
  final int x;
  /// The dashboard's part y coordinate.
  final int y;

  /// Creates a new [DashboardPartsPosition].
  /// [colSpan] The dashboard's part column span.
  /// [metadata] The dashboard part's metadata.
  /// [rowSpan] The dashboard's part row span.
  /// [x] The dashboard's part x coordinate.
  /// [y] The dashboard's part y coordinate.
  DashboardPartsPosition({
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

  factory DashboardPartsPosition.fromMap(Map<String, dynamic> map) {
    return DashboardPartsPosition(
      colSpan: map['colSpan'] as int,
      metadata: map['metadata'] == null ? null : map['metadata'],
      rowSpan: map['rowSpan'] as int,
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}

