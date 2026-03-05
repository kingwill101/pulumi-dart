// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTestResultConsoleLogDownloadURL.
class GetTestResultConsoleLogDownloadURLResult {
  /// The download URL.
  final String downloadUrl;

  /// Expiry date of the download URL.
  final String expirationTime;

  /// Creates a new [GetTestResultConsoleLogDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  GetTestResultConsoleLogDownloadURLResult({
    required this.downloadUrl,
    required this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': downloadUrl,
      'expirationTime': expirationTime,
    };
  }

  factory GetTestResultConsoleLogDownloadURLResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTestResultConsoleLogDownloadURLResult(
      downloadUrl: map['downloadUrl'] as String,
      expirationTime: map['expirationTime'] as String,
    );
  }
}
