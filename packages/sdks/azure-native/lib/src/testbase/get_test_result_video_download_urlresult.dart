// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTestResultVideoDownloadURL.
class GetTestResultVideoDownloadURLResult {
  /// The download URL.
  final String downloadUrl;

  /// Expiry date of the download URL.
  final String expirationTime;

  /// Creates a new [GetTestResultVideoDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  GetTestResultVideoDownloadURLResult({
    required this.downloadUrl,
    required this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': downloadUrl,
      'expirationTime': expirationTime,
    };
  }

  factory GetTestResultVideoDownloadURLResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTestResultVideoDownloadURLResult(
      downloadUrl: map['downloadUrl'] as String,
      expirationTime: map['expirationTime'] as String,
    );
  }
}
