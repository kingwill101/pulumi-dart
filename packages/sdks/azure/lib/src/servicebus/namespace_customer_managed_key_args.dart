// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
/// The set of arguments for NamespaceCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
class NamespaceCustomerManagedKeyArgs {
  /// Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? infrastructureEncryptionEnabled;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [NamespaceCustomerManagedKeyArgs].
  /// [infrastructureEncryptionEnabled] Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  /// [namespaceId] The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  const NamespaceCustomerManagedKeyArgs({
    this.infrastructureEncryptionEnabled,
    required this.keyVaultKeyId,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyId': keyVaultKeyId,
      'namespaceId': namespaceId,
    };
  }

  factory NamespaceCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKeyArgs(
      infrastructureEncryptionEnabled: (() { final guardedValue = map['infrastructureEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}
