// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTestResultVideoDownloadURL.
class GetTestResultVideoDownloadURLResult {
  /// The download URL.
  final String? downloadUrl;
  /// Expiry date of the download URL.
  final String? expirationTime;

  /// Creates a new [GetTestResultVideoDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  const GetTestResultVideoDownloadURLResult({
    this.downloadUrl,
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': ?downloadUrl,
      'expirationTime': ?expirationTime,
    };
  }

  factory GetTestResultVideoDownloadURLResult.fromMap(Map<String, dynamic> map) {
    return GetTestResultVideoDownloadURLResult(
      downloadUrl: (() { final guardedValue = map['downloadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
