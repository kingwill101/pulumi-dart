// ignore_for_file: unused_element, unnecessary_cast


/// Blob range
class BlobRestoreRangeResponse {
  /// Blob end range. This is exclusive. Empty means account end.
  final String endRange;
  /// Blob start range. This is inclusive. Empty means account start.
  final String startRange;

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
      endRange: map['endRange'] as String,
      startRange: map['startRange'] as String,
    );
  }
}

