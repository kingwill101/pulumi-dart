// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTestResultDownloadURL.
class GetTestResultDownloadURLResult {
  /// The download URL.
  final String? downloadUrl;
  /// Expiry date of the download URL.
  final String? expirationTime;

  /// Creates a new [GetTestResultDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  const GetTestResultDownloadURLResult({
    this.downloadUrl,
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': ?downloadUrl,
      'expirationTime': ?expirationTime,
    };
  }

  factory GetTestResultDownloadURLResult.fromMap(Map<String, dynamic> map) {
    return GetTestResultDownloadURLResult(
      downloadUrl: (() { final guardedValue = map['downloadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
