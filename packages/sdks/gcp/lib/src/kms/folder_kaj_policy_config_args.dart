// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_kaj_policy_config_default_key_access_justification_policy.dart';

/// {@template pulumi_kms_folder_kaj_policy_config_folder_kaj_policy_config_args_doc}
/// The set of arguments for FolderKajPolicyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_folder_kaj_policy_config_folder_kaj_policy_config_args_doc}
class FolderKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy>?
  defaultKeyAccessJustificationPolicy;

  /// The numeric folder number for which to retrieve config.
  final pulumi.Input<String> folder;

  /// Creates a new [FolderKajPolicyConfigArgs].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [folder] The numeric folder number for which to retrieve config.
  FolderKajPolicyConfigArgs({
    this.defaultKeyAccessJustificationPolicy,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeyAccessJustificationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy,
            Map<String, dynamic>
          >(defaultKeyAccessJustificationPolicy, (value) => value.toMap()),
      'folder': folder,
    };
  }

  factory FolderKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy: (() {
        final guardedValue = map['defaultKeyAccessJustificationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}
