// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// The key status.
  final bool? disabled;
  /// Specifies the algorithm (and possibly key size) for the key.
  final String? keyAlgorithm;
  /// The key origin.
  final String? keyOrigin;
  /// The key type.
  final String? keyType;
  /// The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  final String? name;
  /// The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  final String? privateKeyData;
  /// The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  final String? privateKeyType;
  /// The public key data. Only provided in `GetServiceAccountKey` responses.
  final String? publicKeyData;
  /// The key can be used after this timestamp.
  final String? validAfterTime;
  /// The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  final String? validBeforeTime;

  /// Creates a new [GetKeyResult].
  /// [disabled] The key status.
  /// [keyAlgorithm] Specifies the algorithm (and possibly key size) for the key.
  /// [keyOrigin] The key origin.
  /// [keyType] The key type.
  /// [name] The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  /// [privateKeyData] The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  /// [privateKeyType] The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  /// [publicKeyData] The public key data. Only provided in `GetServiceAccountKey` responses.
  /// [validAfterTime] The key can be used after this timestamp.
  /// [validBeforeTime] The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  const GetKeyResult({
    this.disabled,
    this.keyAlgorithm,
    this.keyOrigin,
    this.keyType,
    this.name,
    this.privateKeyData,
    this.privateKeyType,
    this.publicKeyData,
    this.validAfterTime,
    this.validBeforeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'keyAlgorithm': ?keyAlgorithm,
      'keyOrigin': ?keyOrigin,
      'keyType': ?keyType,
      'name': ?name,
      'privateKeyData': ?privateKeyData,
      'privateKeyType': ?privateKeyType,
      'publicKeyData': ?publicKeyData,
      'validAfterTime': ?validAfterTime,
      'validBeforeTime': ?validBeforeTime,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyOrigin: (() { final guardedValue = map['keyOrigin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateKeyData: (() { final guardedValue = map['privateKeyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateKeyType: (() { final guardedValue = map['privateKeyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyData: (() { final guardedValue = map['publicKeyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validAfterTime: (() { final guardedValue = map['validAfterTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validBeforeTime: (() { final guardedValue = map['validBeforeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
