// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_encryption_spec_encryption_spec_args_doc}
/// The set of arguments for EncryptionSpec.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_encryption_spec_encryption_spec_args_doc}
class EncryptionSpecArgs {
  /// The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  /// If empty, the resource is secured by the default Google encryption key.
  /// Only the key in the same location as this resource is allowed to be used for encryption.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}
  final pulumi.Input<String> kmsKey;
  /// The location in which the encryptionSpec is to be initialized.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [EncryptionSpecArgs].
  /// [kmsKey] The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  /// [location] The location in which the encryptionSpec is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  const EncryptionSpecArgs({
    required this.kmsKey,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
      'location': location,
      'project': ?project,
    };
  }

  factory EncryptionSpecArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecArgs(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
