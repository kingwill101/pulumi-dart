// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_encryption_scope_args_doc}
/// Arguments for getEncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_storage_get_encryption_scope_args_doc}
class GetEncryptionScopeArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String> encryptionScopeName;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEncryptionScopeArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [encryptionScopeName] The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetEncryptionScopeArgs({
    required this.accountName,
    required this.encryptionScopeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'encryptionScopeName': encryptionScopeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      encryptionScopeName: pulumi.Input.fromValue(
        map['encryptionScopeName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
