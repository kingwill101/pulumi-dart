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
    pulumi.Output<String>? etag,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? keyProject,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      keyProject = pulumi.Input.asOptionalInput<String>(keyProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'folder': ?folder,
      'keyProject': ?keyProject,
    };
  }

  factory AutokeyConfigState.fromMap(Map<String, dynamic> map) {
    return AutokeyConfigState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      keyProject: map['keyProject'] == null ? null : pulumi.Output.create<String>(map['keyProject'] as String),
    );
  }
}

