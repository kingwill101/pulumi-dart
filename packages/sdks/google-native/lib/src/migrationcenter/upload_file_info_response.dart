// ignore_for_file: unused_element, unnecessary_cast


/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfoResponse {
  /// The headers that were used to sign the URI.
  final Map<String, String> headers;
  /// Upload URI for the file.
  final String signedUri;
  /// Expiration time of the upload URI.
  final String uriExpirationTime;

  /// Creates a new [UploadFileInfoResponse].
  /// [headers] The headers that were used to sign the URI.
  /// [signedUri] Upload URI for the file.
  /// [uriExpirationTime] Expiration time of the upload URI.
  UploadFileInfoResponse({
    required this.headers,
    required this.signedUri,
    required this.uriExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': headers,
      'signedUri': signedUri,
      'uriExpirationTime': uriExpirationTime,
    };
  }

  factory UploadFileInfoResponse.fromMap(Map<String, dynamic> map) {
    return UploadFileInfoResponse(
      headers: (map['headers'] as Map).cast<String, String>(),
      signedUri: map['signedUri'] as String,
      uriExpirationTime: map['uriExpirationTime'] as String,
    );
  }
}

