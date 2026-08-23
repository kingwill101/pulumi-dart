// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_crypto_key_versions_get_crypto_key_versions_args_doc}
/// Arguments for getCryptoKeyVersions.
/// {@endtemplate}
/// {@macro pulumi_kms_get_crypto_key_versions_get_crypto_key_versions_args_doc}
class GetCryptoKeyVersionsArgs {
  /// The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// `gcp.kms.CryptoKey` resource/datasource.
  final pulumi.Input<String> cryptoKey;
  /// The filter argument is used to add a filter query parameter that limits which versions are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}/cryptoKeyVersions.
  ///
  /// * `"name:my-key-"` will retrieve cryptoKeyVersions that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1/cryptoKeyVersions/my-version-1"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final pulumi.Input<String>? filter;

  /// Creates a new [GetCryptoKeyVersionsArgs].
  /// [cryptoKey] The `id` of the Google Cloud Platform CryptoKey to which the key version belongs. This is also the `id` field of the
  /// [filter] The filter argument is used to add a filter query parameter that limits which versions are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  const GetCryptoKeyVersionsArgs({
    required this.cryptoKey,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'filter': ?filter,
    };
  }

  factory GetCryptoKeyVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsArgs(
      cryptoKey: pulumi.Input.fromValue(map['cryptoKey'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
