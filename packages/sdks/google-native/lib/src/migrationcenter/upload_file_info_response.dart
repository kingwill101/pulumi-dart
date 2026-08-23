// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfoResponse {
  /// The headers that were used to sign the URI.
  final pulumi.Input<Map<String, String>> headers;
  /// Upload URI for the file.
  final pulumi.Input<String> signedUri;
  /// Expiration time of the upload URI.
  final pulumi.Input<String> uriExpirationTime;

  /// Creates a new [UploadFileInfoResponse].
  /// [headers] The headers that were used to sign the URI.
  /// [signedUri] Upload URI for the file.
  /// [uriExpirationTime] Expiration time of the upload URI.
  const UploadFileInfoResponse({
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
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      signedUri: pulumi.Input.fromValue(map['signedUri'] as String),
      uriExpirationTime: pulumi.Input.fromValue(map['uriExpirationTime'] as String),
    );
  }
}
