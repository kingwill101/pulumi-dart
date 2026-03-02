// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_synapse_key_args_doc}
class KeyArgs {
  /// Used to activate the workspace after a customer managed key is provided.
  final pulumi.Input<bool>? isActiveCMK;
  /// The name of the workspace key
  final pulumi.Input<String>? keyName;
  /// The Key Vault Url of the workspace key.
  final pulumi.Input<String>? keyVaultUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [KeyArgs].
  /// [isActiveCMK] Used to activate the workspace after a customer managed key is provided.
  /// [keyName] The name of the workspace key
  /// [keyVaultUrl] The Key Vault Url of the workspace key.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  KeyArgs({
    this.isActiveCMK,
    this.keyName,
    this.keyVaultUrl,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isActiveCMK': ?isActiveCMK,
      'keyName': ?keyName,
      'keyVaultUrl': ?keyVaultUrl,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      isActiveCMK: map['isActiveCMK'] == null ? null : (map['isActiveCMK']! as bool).input(),
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keyVaultUrl: map['keyVaultUrl'] == null ? null : (map['keyVaultUrl']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

