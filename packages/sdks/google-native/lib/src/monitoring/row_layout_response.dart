// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'row_response.dart';

/// A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.
class RowLayoutResponse {
  /// The rows of content to display.
  final pulumi.Input<List<RowResponse>> rows;

  /// Creates a new [RowLayoutResponse].
  /// [rows] The rows of content to display.
  const RowLayoutResponse({
    required this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rows': pulumi.Input.mapInputValue<List<RowResponse>, List<Map<String, dynamic>>>(rows, (value) => pulumi.Input.encodeList<RowResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RowLayoutResponse.fromMap(Map<String, dynamic> map) {
    return RowLayoutResponse(
      rows: pulumi.Input.fromValue(pulumi.Input.decodeList<RowResponse>(map['rows']!, (value) => RowResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
