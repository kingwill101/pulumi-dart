// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTestResultConsoleLogDownloadURL.
class GetTestResultConsoleLogDownloadURLResult {
  /// The download URL.
  final String? downloadUrl;
  /// Expiry date of the download URL.
  final String? expirationTime;

  /// Creates a new [GetTestResultConsoleLogDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  const GetTestResultConsoleLogDownloadURLResult({
    this.downloadUrl,
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': ?downloadUrl,
      'expirationTime': ?expirationTime,
    };
  }

  factory GetTestResultConsoleLogDownloadURLResult.fromMap(Map<String, dynamic> map) {
    return GetTestResultConsoleLogDownloadURLResult(
      downloadUrl: (() { final guardedValue = map['downloadUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
