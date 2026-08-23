// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_crypto_key_args_doc}
/// Arguments for getCryptoKey.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_crypto_key_args_doc}
class GetCryptoKeyArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCryptoKeyArgs].
  /// [cryptoKeyId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetCryptoKeyArgs({
    required this.cryptoKeyId,
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyId': cryptoKeyId,
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyArgs(
      cryptoKeyId: pulumi.Input.fromValue(map['cryptoKeyId'] as String),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
