// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_kaj_policy_config_default_key_access_justification_policy.dart';

/// Input properties used for looking up and filtering FolderKajPolicyConfig resources.
class FolderKajPolicyConfigState {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>? defaultKeyAccessJustificationPolicy;
  /// The numeric folder number for which to retrieve config.
  final pulumi.Input<String?>? folder;

  /// Creates a new [FolderKajPolicyConfigState].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [folder] The numeric folder number for which to retrieve config.
  const FolderKajPolicyConfigState({
    this.defaultKeyAccessJustificationPolicy,
    this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeyAccessJustificationPolicy': ?pulumi.Input.mapOptionalInputValue<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy, Map<String, dynamic>>(defaultKeyAccessJustificationPolicy, (value) => value.toMap()),
      'folder': ?folder,
    };
  }

  factory FolderKajPolicyConfigState.fromMap(Map<String, dynamic> map) {
    return FolderKajPolicyConfigState(
      defaultKeyAccessJustificationPolicy: (() { final guardedValue = map['defaultKeyAccessJustificationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
