// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FolderSettings resources.
class FolderSettingsState {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final pulumi.Input<bool>? disableDefaultSink;
  /// The folder for which to retrieve settings.
  final pulumi.Input<String>? folder;
  /// The resource name for the configured Cloud KMS key.
  final pulumi.Input<String>? kmsKeyName;
  /// The service account that will be used by the Log Router to access your Cloud KMS key.
  final pulumi.Input<String>? kmsServiceAccountId;
  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  final pulumi.Input<String>? loggingServiceAccountId;
  /// The resource name of the settings.
  final pulumi.Input<String>? name;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final pulumi.Input<String>? storageLocation;

  /// Creates a new [FolderSettingsState].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [folder] The folder for which to retrieve settings.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [kmsServiceAccountId] The service account that will be used by the Log Router to access your Cloud KMS key.
  /// [loggingServiceAccountId] The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  /// [name] The resource name of the settings.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  FolderSettingsState({
    this.disableDefaultSink,
    this.folder,
    this.kmsKeyName,
    this.kmsServiceAccountId,
    this.loggingServiceAccountId,
    this.name,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultSink': ?disableDefaultSink,
      'folder': ?folder,
      'kmsKeyName': ?kmsKeyName,
      'kmsServiceAccountId': ?kmsServiceAccountId,
      'loggingServiceAccountId': ?loggingServiceAccountId,
      'name': ?name,
      'storageLocation': ?storageLocation,
    };
  }

  factory FolderSettingsState.fromMap(Map<String, dynamic> map) {
    return FolderSettingsState(
      disableDefaultSink: map['disableDefaultSink'] == null ? null : (map['disableDefaultSink']! as bool).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      kmsServiceAccountId: map['kmsServiceAccountId'] == null ? null : (map['kmsServiceAccountId']! as String).input(),
      loggingServiceAccountId: map['loggingServiceAccountId'] == null ? null : (map['loggingServiceAccountId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      storageLocation: map['storageLocation'] == null ? null : (map['storageLocation']! as String).input(),
    );
  }
}

