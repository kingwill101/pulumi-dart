// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Key resources.
class KeyState {
  /// Arbitrary map of values that, when changed, will trigger a new key to be generated.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// Valid values are listed at
  /// [ServiceAccountPrivateKeyType](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys#ServiceAccountKeyAlgorithm)
  /// (only used on create)
  final pulumi.Input<String>? keyAlgorithm;

  /// The name used for this key pair
  final pulumi.Input<String>? name;

  /// The private key in JSON format, base64 encoded. This is what you normally get as a file when creating
  /// service account keys through the CLI or web console. This is only populated when creating a new key.
  final pulumi.Input<String>? privateKey;

  /// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  final pulumi.Input<String>? privateKeyType;

  /// The public key, base64 encoded
  final pulumi.Input<String>? publicKey;

  /// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  final pulumi.Input<String>? publicKeyData;

  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  final pulumi.Input<String>? publicKeyType;

  /// The Service account id of the Key. This can be a string in the format
  /// `{ACCOUNT}` or `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. If the `{ACCOUNT}`-only syntax is used, either
  /// the **full** email address of the service account or its name can be specified as a value, in which case the project will
  /// automatically be inferred from the account. Otherwise, if the `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`
  /// syntax is used, the `{ACCOUNT}` specified can be the full email address of the service account or the service account's
  /// unique id. Substituting `-` as a wildcard for the `{PROJECT_ID}` will infer the project from the account.
  final pulumi.Input<String>? serviceAccountId;

  /// The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? validAfter;

  /// The key can be used before this timestamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? validBefore;

  /// Creates a new [KeyState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger a new key to be generated.
  /// [keyAlgorithm] The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// [name] The name used for this key pair
  /// [privateKey] The private key in JSON format, base64 encoded. This is what you normally get as a file when creating
  /// [privateKeyType] The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  /// [publicKey] The public key, base64 encoded
  /// [publicKeyData] Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  /// [publicKeyType] The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  /// [serviceAccountId] The Service account id of the Key. This can be a string in the format
  /// [validAfter] The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [validBefore] The key can be used before this timestamp.
  KeyState({
    this.keepers,
    this.keyAlgorithm,
    this.name,
    this.privateKey,
    this.privateKeyType,
    this.publicKey,
    this.publicKeyData,
    this.publicKeyType,
    this.serviceAccountId,
    this.validAfter,
    this.validBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'keyAlgorithm': ?keyAlgorithm,
      'name': ?name,
      'privateKey': ?privateKey,
      'privateKeyType': ?privateKeyType,
      'publicKey': ?publicKey,
      'publicKeyData': ?publicKeyData,
      'publicKeyType': ?publicKeyType,
      'serviceAccountId': ?serviceAccountId,
      'validAfter': ?validAfter,
      'validBefore': ?validBefore,
    };
  }

  factory KeyState.fromMap(Map<String, dynamic> map) {
    return KeyState(
      keepers: (() {
        final guardedValue = map['keepers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      keyAlgorithm: (() {
        final guardedValue = map['keyAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKeyType: (() {
        final guardedValue = map['privateKeyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKey: (() {
        final guardedValue = map['publicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKeyData: (() {
        final guardedValue = map['publicKeyData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKeyType: (() {
        final guardedValue = map['publicKeyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountId: (() {
        final guardedValue = map['serviceAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validAfter: (() {
        final guardedValue = map['validAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validBefore: (() {
        final guardedValue = map['validBefore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
