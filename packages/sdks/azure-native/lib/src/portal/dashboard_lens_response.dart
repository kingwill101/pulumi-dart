// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_parts_response.dart';

/// A dashboard lens.
class DashboardLensResponse {
  /// The dashboard len's metadata.
  final dynamic metadata;
  /// The lens order.
  final int order;
  /// The dashboard parts.
  final List<DashboardPartsResponse> parts;

  /// Creates a new [DashboardLensResponse].
  /// [metadata] The dashboard len's metadata.
  /// [order] The lens order.
  /// [parts] The dashboard parts.
  DashboardLensResponse({
    this.metadata,
    required this.order,
    required this.parts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'order': order,
      'parts': pulumi.Input.encodeList<DashboardPartsResponse, Map<String, dynamic>>(parts, (value) => value.toMap()),
    };
  }

  factory DashboardLensResponse.fromMap(Map<String, dynamic> map) {
    return DashboardLensResponse(
      metadata: map['metadata'] == null ? null : map['metadata'],
      order: map['order'] as int,
      parts: pulumi.Input.decodeList<DashboardPartsResponse>(map['parts'], (value) => DashboardPartsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

