// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_import_method.dart';
import 'import_job_protection_level.dart';

/// {@template pulumi_cloudkms_v1_import_job_args_doc}
/// The set of arguments for ImportJob.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_import_job_args_doc}
class ImportJobArgs {
  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String>? importJobId;

  /// Immutable. The wrapping method to be used for incoming key material.
  final pulumi.Input<ImportJobImportMethod> importMethod;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  final pulumi.Input<ImportJobProtectionLevel> protectionLevel;

  /// Creates a new [ImportJobArgs].
  /// [importJobId] Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [importMethod] Immutable. The wrapping method to be used for incoming key material.
  /// [keyRingId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [protectionLevel] Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  ImportJobArgs({
    this.importJobId,
    required this.importMethod,
    required this.keyRingId,
    this.location,
    this.project,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importJobId': ?importJobId,
      'importMethod': pulumi.Input.mapInputValue<ImportJobImportMethod, String>(
        importMethod,
        (value) => value.wireValue,
      ),
      'keyRingId': keyRingId,
      'location': ?location,
      'project': ?project,
      'protectionLevel':
          pulumi.Input.mapInputValue<ImportJobProtectionLevel, String>(
            protectionLevel,
            (value) => value.wireValue,
          ),
    };
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      importJobId: (() {
        final guardedValue = map['importJobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importMethod: pulumi.Input.fromValue(
        ImportJobImportMethod.fromValue(map['importMethod']! as String),
      ),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionLevel: pulumi.Input.fromValue(
        ImportJobProtectionLevel.fromValue(map['protectionLevel']! as String),
      ),
    );
  }
}
