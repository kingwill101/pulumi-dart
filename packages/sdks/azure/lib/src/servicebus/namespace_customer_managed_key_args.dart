// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
/// The set of arguments for NamespaceCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
class NamespaceCustomerManagedKeyArgs {
  /// Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [NamespaceCustomerManagedKeyArgs].
  /// [infrastructureEncryptionEnabled] Used to specify whether enable Infrastructure Encryption. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Service Bus Namespace.
  /// [namespaceId] The ID of the Service Bus namespace. Changing this forces a new resource to be created.
  NamespaceCustomerManagedKeyArgs({
    pulumi.Output<bool>? infrastructureEncryptionEnabled,
    required pulumi.Output<String> keyVaultKeyId,
    required pulumi.Output<String> namespaceId,
  }) :
      infrastructureEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(infrastructureEncryptionEnabled),
      keyVaultKeyId = pulumi.Input.asInput<String>(keyVaultKeyId),
      namespaceId = pulumi.Input.asInput<String>(namespaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyId': keyVaultKeyId,
      'namespaceId': namespaceId,
    };
  }

  factory NamespaceCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKeyArgs(
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['infrastructureEncryptionEnabled'] as bool),
      keyVaultKeyId: pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
    );
  }
}

