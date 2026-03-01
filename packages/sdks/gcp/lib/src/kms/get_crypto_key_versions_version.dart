// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_versions_version_public_key.dart';

class GetCryptoKeyVersionsVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final String cryptoKey;
  final String id;
  final String name;
  final String protectionLevel;
  final List<GetCryptoKeyVersionsVersionPublicKey> publicKeys;
  final String state;
  final int version;

  /// Creates a new [GetCryptoKeyVersionsVersion].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [cryptoKey] The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// [id] Required.
  /// [name] Required.
  /// [protectionLevel] Required.
  /// [publicKeys] Required.
  /// [state] Required.
  /// [version] Required.
  GetCryptoKeyVersionsVersion({
    required this.algorithm,
    required this.cryptoKey,
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
      'id': id,
      'name': name,
      'protectionLevel': protectionLevel,
      'publicKeys': pulumi.Input.encodeList<GetCryptoKeyVersionsVersionPublicKey, Map<String, dynamic>>(publicKeys, (value) => value.toMap()),
      'state': state,
      'version': version,
    };
  }

  factory GetCryptoKeyVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsVersion(
      algorithm: map['algorithm'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      publicKeys: pulumi.Input.decodeList<GetCryptoKeyVersionsVersionPublicKey>(map['publicKeys'], (value) => GetCryptoKeyVersionsVersionPublicKey.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      version: map['version'] as int,
    );
  }
}

