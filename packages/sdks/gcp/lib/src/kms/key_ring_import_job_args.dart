// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_ring_import_job_key_ring_import_job_args_doc}
/// The set of arguments for KeyRingImportJob.
/// {@endtemplate}
/// {@macro pulumi_kms_key_ring_import_job_key_ring_import_job_args_doc}
class KeyRingImportJobArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  final pulumi.Input<String> importJobId;
  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  final pulumi.Input<String> importMethod;
  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  final pulumi.Input<String> keyRing;
  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  final pulumi.Input<String> protectionLevel;

  /// Creates a new [KeyRingImportJobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [importJobId] It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  /// [importMethod] The wrapping method to be used for incoming key material.
  /// [keyRing] The KeyRing that this import job belongs to.
  /// [protectionLevel] The protection level of the ImportJob. This must match the protectionLevel of the
  const KeyRingImportJobArgs({
    this.deletionPolicy,
    required this.importJobId,
    required this.importMethod,
    required this.keyRing,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'importJobId': importJobId,
      'importMethod': importMethod,
      'keyRing': keyRing,
      'protectionLevel': protectionLevel,
    };
  }

  factory KeyRingImportJobArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      importMethod: pulumi.Input.fromValue(map['importMethod'] as String),
      keyRing: pulumi.Input.fromValue(map['keyRing'] as String),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
    );
  }
}
