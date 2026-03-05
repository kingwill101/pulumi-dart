// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfoResponseMigrationcenterV1alpha1 {
  /// The headers that were used to sign the URL.
  final pulumi.Input<Map<String, String>> headers;
  /// Upload URI for the file.
  final pulumi.Input<String> signedUri;
  /// Expiration time of the upload URI.
  final pulumi.Input<String> uriExpirationTime;

  /// Creates a new [UploadFileInfoResponseMigrationcenterV1alpha1].
  /// [headers] The headers that were used to sign the URL.
  /// [signedUri] Upload URI for the file.
  /// [uriExpirationTime] Expiration time of the upload URI.
  UploadFileInfoResponseMigrationcenterV1alpha1({
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

  factory UploadFileInfoResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return UploadFileInfoResponseMigrationcenterV1alpha1(
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      signedUri: pulumi.Input.fromValue(map['signedUri'] as String),
      uriExpirationTime: pulumi.Input.fromValue(map['uriExpirationTime'] as String),
    );
  }
}

