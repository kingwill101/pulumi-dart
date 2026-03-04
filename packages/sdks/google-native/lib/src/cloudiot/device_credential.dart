// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_credential.dart';

/// A server-stored device credential used for authentication.
class DeviceCredential {
  /// [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.
  final pulumi.Input<String>? expirationTime;

  /// A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.
  final pulumi.Input<PublicKeyCredential>? publicKey;

  /// Creates a new [DeviceCredential].
  /// [expirationTime] [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.
  /// [publicKey] A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.
  DeviceCredential({this.expirationTime, this.publicKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'publicKey':
          ?pulumi.Input.mapOptionalInputValue<
            PublicKeyCredential,
            Map<String, dynamic>
          >(publicKey, (value) => value.toMap()),
    };
  }

  factory DeviceCredential.fromMap(Map<String, dynamic> map) {
    return DeviceCredential(
      expirationTime: (() {
        final guardedValue = map['expirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKey: (() {
        final guardedValue = map['publicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublicKeyCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
