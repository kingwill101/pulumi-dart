// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceCustomerManagedKey resources.
class NamespaceCustomerManagedKeyState {
  /// Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceId;

  /// Creates a new [NamespaceCustomerManagedKeyState].
  /// [infrastructureEncryptionEnabled] Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  /// [namespaceId] The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  NamespaceCustomerManagedKeyState({
    this.infrastructureEncryptionEnabled,
    this.keyVaultKeyId,
    this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'namespaceId': ?namespaceId,
    };
  }

  factory NamespaceCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKeyState(
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : (map['infrastructureEncryptionEnabled']! as bool).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId']! as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId']! as String).input(),
    );
  }
}

