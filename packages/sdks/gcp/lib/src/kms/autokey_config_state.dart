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
  /// `projects/&lt;project_id_or_number&gt;`.
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
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyProject: (() { final guardedValue = map['keyProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

