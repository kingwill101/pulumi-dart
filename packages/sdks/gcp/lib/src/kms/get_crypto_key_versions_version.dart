// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_versions_version_public_key.dart';

class GetCryptoKeyVersionsVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final pulumi.Input<String> algorithm;
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final pulumi.Input<String> cryptoKey;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<String> protectionLevel;
  final pulumi.Input<List<GetCryptoKeyVersionsVersionPublicKey>> publicKeys;
  final pulumi.Input<String> state;
  final pulumi.Input<int> version;

  /// Creates a new [GetCryptoKeyVersionsVersion].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [cryptoKey] The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// [id] Required.
  /// [name] Required.
  /// [protectionLevel] Required.
  /// [publicKeys] Required.
  /// [state] Required.
  /// [version] Required.
  const GetCryptoKeyVersionsVersion({
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
      'publicKeys': pulumi.Input.mapInputValue<List<GetCryptoKeyVersionsVersionPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<GetCryptoKeyVersionsVersionPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'version': version,
    };
  }

  factory GetCryptoKeyVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsVersion(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      cryptoKey: pulumi.Input.fromValue(map['cryptoKey'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
      publicKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCryptoKeyVersionsVersionPublicKey>(map['publicKeys']!, (value) => GetCryptoKeyVersionsVersionPublicKey.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
    );
  }
}
