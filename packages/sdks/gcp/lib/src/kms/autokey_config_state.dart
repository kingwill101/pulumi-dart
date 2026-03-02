// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutokeyConfig resources.
class AutokeyConfigState {
  /// The etag of the AutokeyConfig for optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// The folder for which to retrieve config.
  final pulumi.Input<String>? folder;
  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/<project_id_or_number>`.
  final pulumi.Input<String>? keyProject;

  /// Creates a new [AutokeyConfigState].
  /// [etag] The etag of the AutokeyConfig for optimistic concurrency control.
  /// [folder] The folder for which to retrieve config.
  /// [keyProject] The target key project for a given folder where KMS Autokey will provision a
  AutokeyConfigState({
    this.etag,
    this.folder,
    this.keyProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'folder': ?folder,
      'keyProject': ?keyProject,
    };
  }

  factory AutokeyConfigState.fromMap(Map<String, dynamic> map) {
    return AutokeyConfigState(
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      keyProject: map['keyProject'] == null ? null : (map['keyProject'] as String).input(),
    );
  }
}

