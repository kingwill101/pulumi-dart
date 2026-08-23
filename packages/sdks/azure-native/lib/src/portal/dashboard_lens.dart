// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_parts.dart';

/// A dashboard lens.
class DashboardLens {
  /// The dashboard len's metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The lens order.
  final pulumi.Input<int> order;
  /// The dashboard parts.
  final pulumi.Input<List<DashboardParts>> parts;

  /// Creates a new [DashboardLens].
  /// [metadata] The dashboard len's metadata.
  /// [order] The lens order.
  /// [parts] The dashboard parts.
  const DashboardLens({
    this.metadata,
    required this.order,
    required this.parts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'order': order,
      'parts': pulumi.Input.mapInputValue<List<DashboardParts>, List<Map<String, dynamic>>>(parts, (value) => pulumi.Input.encodeList<DashboardParts, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardLens.fromMap(Map<String, dynamic> map) {
    return DashboardLens(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      order: pulumi.Input.fromValue(map['order'] as int),
      parts: pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardParts>(map['parts']!, (value) => DashboardParts.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
