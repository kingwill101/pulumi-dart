// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_autokey_config_get_autokey_config_args_doc}
/// Arguments for getAutokeyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_get_autokey_config_get_autokey_config_args_doc}
class GetAutokeyConfigArgs {
  /// The folder in which the AutokeyConfig is configured. If it
  /// is not provided, the provider folder is used.
  final pulumi.Input<String> folder;

  /// Creates a new [GetAutokeyConfigArgs].
  /// [folder] The folder in which the AutokeyConfig is configured. If it
  GetAutokeyConfigArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
    };
  }

  factory GetAutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAutokeyConfigArgs(
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}

