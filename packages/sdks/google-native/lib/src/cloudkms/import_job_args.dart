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
    pulumi.Output<String>? importJobId,
    required pulumi.Output<ImportJobImportMethod> importMethod,
    required pulumi.Output<String> keyRingId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<ImportJobProtectionLevel> protectionLevel,
  }) :
      importJobId = pulumi.Input.asOptionalInput<String>(importJobId),
      importMethod = pulumi.Input.asInput<ImportJobImportMethod>(importMethod),
      keyRingId = pulumi.Input.asInput<String>(keyRingId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      protectionLevel = pulumi.Input.asInput<ImportJobProtectionLevel>(protectionLevel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importJobId': ?importJobId,
      'importMethod': pulumi.Input.mapInputValue<ImportJobImportMethod, String>(importMethod, (value) => value.value),
      'keyRingId': keyRingId,
      'location': ?location,
      'project': ?project,
      'protectionLevel': pulumi.Input.mapInputValue<ImportJobProtectionLevel, String>(protectionLevel, (value) => value.value),
    };
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      importJobId: map['importJobId'] == null ? null : pulumi.Output.create<String>(map['importJobId'] as String),
      importMethod: pulumi.Output.create<ImportJobImportMethod>(ImportJobImportMethod.fromValue(map['importMethod'] as String)),
      keyRingId: pulumi.Output.create<String>(map['keyRingId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      protectionLevel: pulumi.Output.create<ImportJobProtectionLevel>(ImportJobProtectionLevel.fromValue(map['protectionLevel'] as String)),
    );
  }
}

