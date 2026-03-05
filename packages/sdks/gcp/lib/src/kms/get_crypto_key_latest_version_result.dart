// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_latest_version_public_key.dart';

/// Result data returned by getCryptoKeyLatestVersion.
class GetCryptoKeyLatestVersionResult {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;
  final String cryptoKey;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protection_level reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  final String protectionLevel;
  /// If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  final List<GetCryptoKeyLatestVersionPublicKey> publicKeys;
  /// The current state of the latest CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  final String state;
  final int version;

  /// Creates a new [GetCryptoKeyLatestVersionResult].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [cryptoKey] Required.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protection_level reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  /// [publicKeys] If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  /// [state] The current state of the latest CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  /// [version] Required.
  GetCryptoKeyLatestVersionResult({
    required this.algorithm,
    required this.cryptoKey,
    this.filter,
    required this.id,
    required this.name,
    required this.protectionLevel,
    required this.publicKeys,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'cryptoKey': cryptoKey,
      'filter': ?filter,
      'id': id,
      'name': name,
      'protectionLevel': protectionLevel,
      'publicKeys': pulumi.Input.encodeList<GetCryptoKeyLatestVersionPublicKey, Map<String, dynamic>>(publicKeys, (value) => value.toMap()),
      'state': state,
      'version': version,
    };
  }

  factory GetCryptoKeyLatestVersionResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyLatestVersionResult(
      algorithm: map['algorithm'] as String,
      cryptoKey: map['cryptoKey'] as String,
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKeys: pulumi.Input.decodeList<GetCryptoKeyLatestVersionPublicKey>(map['publicKeys']!, (value) => GetCryptoKeyLatestVersionPublicKey.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      version: map['version'] as int,
    );
  }
}

