// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_autokey_config_autokey_config_args_doc}
/// The set of arguments for AutokeyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_autokey_config_autokey_config_args_doc}
class AutokeyConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The folder for which to retrieve config.
  final pulumi.Input<String> folder;
  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/&lt;project_id_or_number&gt;`.
  final pulumi.Input<String>? keyProject;
  /// How Autokey determines which project to use when provisioning CMEK keys.
  /// Possible values are: `DEDICATED_KEY_PROJECT`, `RESOURCE_PROJECT`, `DISABLED`.
  final pulumi.Input<String>? keyProjectResolutionMode;

  /// Creates a new [AutokeyConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [folder] The folder for which to retrieve config.
  /// [keyProject] The target key project for a given folder where KMS Autokey will provision a
  /// [keyProjectResolutionMode] How Autokey determines which project to use when provisioning CMEK keys.
  const AutokeyConfigArgs({
    this.deletionPolicy,
    required this.folder,
    this.keyProject,
    this.keyProjectResolutionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'folder': folder,
      'keyProject': ?keyProject,
      'keyProjectResolutionMode': ?keyProjectResolutionMode,
    };
  }

  factory AutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return AutokeyConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      keyProject: (() { final guardedValue = map['keyProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyProjectResolutionMode: (() { final guardedValue = map['keyProjectResolutionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
