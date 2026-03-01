// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_crypto_keys_get_crypto_keys_args_doc}
/// Arguments for getCryptoKeys.
/// {@endtemplate}
/// {@macro pulumi_kms_get_crypto_keys_get_crypto_keys_args_doc}
class GetCryptoKeysArgs {
  /// The filter argument is used to add a filter query parameter that limits which keys are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}.
  ///
  /// * `"name:my-key-"` will retrieve keys that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring/cryptoKeys/my-key-1"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final pulumi.Input<String>? filter;
  /// The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  final pulumi.Input<String> keyRing;

  /// Creates a new [GetCryptoKeysArgs].
  /// [filter] The filter argument is used to add a filter query parameter that limits which keys are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  /// [keyRing] The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  GetCryptoKeysArgs({
    pulumi.Output<String>? filter,
    required pulumi.Output<String> keyRing,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      keyRing = pulumi.Input.asInput<String>(keyRing);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'keyRing': keyRing,
    };
  }

  factory GetCryptoKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysArgs(
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      keyRing: pulumi.Output.create<String>(map['keyRing'] as String),
    );
  }
}

