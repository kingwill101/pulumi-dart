// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectSettings.
class GetProjectSettingsResult {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final bool? disableDefaultSink;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name for the configured Cloud KMS key.
  /// KMS key name format:
  /// `'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]'`
  /// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
  /// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
  /// See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String? kmsKeyName;
  /// The service account associated with a project for which CMEK will apply.
  /// Before enabling CMEK for a logging bucket, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account associated with the project for which CMEK will apply. See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String? kmsServiceAccountId;
  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  final String? loggingServiceAccountId;
  /// The resource name of the settings.
  final String? name;
  final String? project;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final String? storageLocation;

  /// Creates a new [GetProjectSettingsResult].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [kmsServiceAccountId] The service account associated with a project for which CMEK will apply.
  /// [loggingServiceAccountId] The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  /// [name] The resource name of the settings.
  /// [project] Optional.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  const GetProjectSettingsResult({
    this.disableDefaultSink,
    this.id,
    this.kmsKeyName,
    this.kmsServiceAccountId,
    this.loggingServiceAccountId,
    this.name,
    this.project,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultSink': ?disableDefaultSink,
      'id': ?id,
      'kmsKeyName': ?kmsKeyName,
      'kmsServiceAccountId': ?kmsServiceAccountId,
      'loggingServiceAccountId': ?loggingServiceAccountId,
      'name': ?name,
      'project': ?project,
      'storageLocation': ?storageLocation,
    };
  }

  factory GetProjectSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsResult(
      disableDefaultSink: (() { final guardedValue = map['disableDefaultSink']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsServiceAccountId: (() { final guardedValue = map['kmsServiceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingServiceAccountId: (() { final guardedValue = map['loggingServiceAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
