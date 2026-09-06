// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_part_metadata.dart';
import 'dashboard_parts_position.dart';

/// A dashboard part.
class DashboardParts {
  /// The dashboard's part metadata.
  final pulumi.Input<DashboardPartMetadata?>? metadata;
  /// The dashboard's part position.
  final pulumi.Input<DashboardPartsPosition> position;

  /// Creates a new [DashboardParts].
  /// [metadata] The dashboard's part metadata.
  /// [position] The dashboard's part position.
  const DashboardParts({
    this.metadata,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<DashboardPartMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'position': pulumi.Input.mapInputValue<DashboardPartsPosition, Map<String, dynamic>>(position, (value) => value.toMap()),
    };
  }

  factory DashboardParts.fromMap(Map<String, dynamic> map) {
    return DashboardParts(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardPartMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      position: pulumi.Input.fromValue(DashboardPartsPosition.fromMap((map['position']! as Map).cast<String, dynamic>())),
    );
  }
}
