// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPackageDownloadURL.
class GetPackageDownloadURLResult {
  /// The download URL.
  final String downloadUrl;
  /// Expiry date of the download URL.
  final String expirationTime;

  /// Creates a new [GetPackageDownloadURLResult].
  /// [downloadUrl] The download URL.
  /// [expirationTime] Expiry date of the download URL.
  GetPackageDownloadURLResult({
    required this.downloadUrl,
    required this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadUrl': downloadUrl,
      'expirationTime': expirationTime,
    };
  }

  factory GetPackageDownloadURLResult.fromMap(Map<String, dynamic> map) {
    return GetPackageDownloadURLResult(
      downloadUrl: map['downloadUrl'] as String,
      expirationTime: map['expirationTime'] as String,
    );
  }
}

