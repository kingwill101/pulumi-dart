// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportDataFileUploadFileInfo {
  /// (Output)
  /// The headers that were used to sign the URI.
  final pulumi.Input<Map<String, String>?>? headers;
  /// (Output)
  /// Upload URI for the file.
  final pulumi.Input<String?>? signedUri;
  /// (Output)
  /// Expiration time of the upload URI.
  final pulumi.Input<String?>? uriExpirationTime;

  /// Creates a new [ImportDataFileUploadFileInfo].
  /// [headers] (Output)
  /// [signedUri] (Output)
  /// [uriExpirationTime] (Output)
  const ImportDataFileUploadFileInfo({
    this.headers,
    this.signedUri,
    this.uriExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
      'signedUri': ?signedUri,
      'uriExpirationTime': ?uriExpirationTime,
    };
  }

  factory ImportDataFileUploadFileInfo.fromMap(Map<String, dynamic> map) {
    return ImportDataFileUploadFileInfo(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      signedUri: (() { final guardedValue = map['signedUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uriExpirationTime: (() { final guardedValue = map['uriExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
