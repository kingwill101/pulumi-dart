// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyVaultContact {
  final pulumi.Input<String> email;

  /// Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? phone;

  /// Creates a new [KeyVaultContact].
  /// [email] Required.
  /// [name] Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name.
  /// [phone] Optional.
  KeyVaultContact({required this.email, this.name, this.phone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email, 'name': ?name, 'phone': ?phone};
  }

  factory KeyVaultContact.fromMap(Map<String, dynamic> map) {
    return KeyVaultContact(
      email: pulumi.Input.fromValue(map['email'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phone: (() {
        final guardedValue = map['phone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
