// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatistics5Response {
  /// Number of logical bytes copied to the destination table.
  final pulumi.Input<String> copiedLogicalBytes;
  /// Number of rows copied to the destination table.
  final pulumi.Input<String> copiedRows;

  /// Creates a new [JobStatistics5Response].
  /// [copiedLogicalBytes] Number of logical bytes copied to the destination table.
  /// [copiedRows] Number of rows copied to the destination table.
  JobStatistics5Response({
    required this.copiedLogicalBytes,
    required this.copiedRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copiedLogicalBytes': copiedLogicalBytes,
      'copiedRows': copiedRows,
    };
  }

  factory JobStatistics5Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics5Response(
      copiedLogicalBytes: (map['copiedLogicalBytes'] as String).input(),
      copiedRows: (map['copiedRows'] as String).input(),
    );
  }
}

