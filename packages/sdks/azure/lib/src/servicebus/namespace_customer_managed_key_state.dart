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
  const NamespaceCustomerManagedKeyState({
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
      infrastructureEncryptionEnabled: (() { final guardedValue = map['infrastructureEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
