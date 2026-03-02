// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_autokey_config_autokey_config_args_doc}
/// The set of arguments for AutokeyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_autokey_config_autokey_config_args_doc}
class AutokeyConfigArgs {
  /// The folder for which to retrieve config.
  final pulumi.Input<String> folder;
  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/<project_id_or_number>`.
  final pulumi.Input<String>? keyProject;

  /// Creates a new [AutokeyConfigArgs].
  /// [folder] The folder for which to retrieve config.
  /// [keyProject] The target key project for a given folder where KMS Autokey will provision a
  AutokeyConfigArgs({
    required this.folder,
    this.keyProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
      'keyProject': ?keyProject,
    };
  }

  factory AutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return AutokeyConfigArgs(
      folder: (map['folder'] as String).input(),
      keyProject: map['keyProject'] == null ? null : (map['keyProject']! as String).input(),
    );
  }
}

