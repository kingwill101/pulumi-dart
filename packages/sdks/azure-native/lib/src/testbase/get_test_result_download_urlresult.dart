// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTestResultDownloadURL.
class GetTestResultDownloadURLResult {
  /// The download URL.
  final String downloadUrl;
  /// Expiry date of the download URL.
  final String expirationTime;

  /// Creates a new [GetTestResultDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  GetTestResultDownloadURLResult({
    required this.downloadUrl,
    required this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': downloadUrl,
      'expirationTime': expirationTime,
    };
  }

  factory GetTestResultDownloadURLResult.fromMap(Map<String, dynamic> map) {
    return GetTestResultDownloadURLResult(
      downloadUrl: map['downloadUrl'] as String,
      expirationTime: map['expirationTime'] as String,
    );
  }
}

