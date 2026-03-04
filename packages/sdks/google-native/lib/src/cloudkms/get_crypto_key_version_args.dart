// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
/// Arguments for getCryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
class GetCryptoKeyVersionArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> cryptoKeyVersionId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCryptoKeyVersionArgs].
  /// [cryptoKeyId] Required.
  /// [cryptoKeyVersionId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCryptoKeyVersionArgs({
    required this.cryptoKeyId,
    required this.cryptoKeyVersionId,
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyId': cryptoKeyId,
      'cryptoKeyVersionId': cryptoKeyVersionId,
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionArgs(
      cryptoKeyId: pulumi.Input.fromValue(map['cryptoKeyId'] as String),
      cryptoKeyVersionId: pulumi.Input.fromValue(
        map['cryptoKeyVersionId'] as String,
      ),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
