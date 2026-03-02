// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Blob range
class BlobRestoreRangeResponse {
  /// Blob end range. This is exclusive. Empty means account end.
  final pulumi.Input<String> endRange;
  /// Blob start range. This is inclusive. Empty means account start.
  final pulumi.Input<String> startRange;

  /// Creates a new [BlobRestoreRangeResponse].
  /// [endRange] Blob end range. This is exclusive. Empty means account end.
  /// [startRange] Blob start range. This is inclusive. Empty means account start.
  BlobRestoreRangeResponse({
    required this.endRange,
    required this.startRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endRange': endRange,
      'startRange': startRange,
    };
  }

  factory BlobRestoreRangeResponse.fromMap(Map<String, dynamic> map) {
    return BlobRestoreRangeResponse(
      endRange: (map['endRange'] as String).input(),
      startRange: (map['startRange'] as String).input(),
    );
  }
}

