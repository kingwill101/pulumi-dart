// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_credential_format.dart';

/// A public key format and data.
class PublicKeyCredential {
  /// The format of the key.
  final pulumi.Input<PublicKeyCredentialFormat>? format;
  /// The key data.
  final pulumi.Input<String>? key;

  /// Creates a new [PublicKeyCredential].
  /// [format] The format of the key.
  /// [key] The key data.
  PublicKeyCredential({
    this.format,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<PublicKeyCredentialFormat, String>(format, (value) => value.wireValue),
      'key': ?key,
    };
  }

  factory PublicKeyCredential.fromMap(Map<String, dynamic> map) {
    return PublicKeyCredential(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicKeyCredentialFormat.fromValue(guardedValue as String)); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

