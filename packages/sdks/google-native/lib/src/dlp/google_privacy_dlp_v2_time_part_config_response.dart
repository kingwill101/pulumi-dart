// ignore_for_file: unused_element, unnecessary_cast


/// For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a portion of the value.
class GooglePrivacyDlpV2TimePartConfigResponse {
  /// The part of the time to keep.
  final String partToExtract;

  /// Creates a new [GooglePrivacyDlpV2TimePartConfigResponse].
  /// [partToExtract] The part of the time to keep.
  GooglePrivacyDlpV2TimePartConfigResponse({
    required this.partToExtract,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partToExtract': partToExtract,
    };
  }

  factory GooglePrivacyDlpV2TimePartConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TimePartConfigResponse(
      partToExtract: map['partToExtract'] as String,
    );
  }
}

