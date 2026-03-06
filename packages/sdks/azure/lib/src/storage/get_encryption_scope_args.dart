// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_encryption_scope_get_encryption_scope_args_doc}
/// Arguments for getEncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_storage_get_encryption_scope_get_encryption_scope_args_doc}
class GetEncryptionScopeArgs {
  /// The name of this Storage Encryption Scope.
  final pulumi.Input<String> name;
  /// The ID of the Storage Account where this Storage Encryption Scope exists.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetEncryptionScopeArgs].
  /// [name] The name of this Storage Encryption Scope.
  /// [storageAccountId] The ID of the Storage Account where this Storage Encryption Scope exists.
  const GetEncryptionScopeArgs({
    required this.name,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetEncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

