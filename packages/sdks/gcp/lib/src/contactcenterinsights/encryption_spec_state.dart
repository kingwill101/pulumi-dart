// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionSpec resources.
class EncryptionSpecState {
  /// The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  /// If empty, the resource is secured by the default Google encryption key.
  /// Only the key in the same location as this resource is allowed to be used for encryption.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}
  final pulumi.Input<String?>? kmsKey;
  /// The location in which the encryptionSpec is to be initialized.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [EncryptionSpecState].
  /// [kmsKey] The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  /// [location] The location in which the encryptionSpec is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  const EncryptionSpecState({
    this.kmsKey,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'location': ?location,
      'project': ?project,
    };
  }

  factory EncryptionSpecState.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecState(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
