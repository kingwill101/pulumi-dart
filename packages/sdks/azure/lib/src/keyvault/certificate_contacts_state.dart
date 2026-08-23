// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_contacts_contact.dart';

/// Input properties used for looking up and filtering CertificateContacts resources.
class CertificateContactsState {
  /// One or more `contact` blocks as defined below.
  final pulumi.Input<List<CertificateContactsContact>>? contacts;
  /// The ID of the Key Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;

  /// Creates a new [CertificateContactsState].
  /// [contacts] One or more `contact` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault. Changing this forces a new resource to be created.
  const CertificateContactsState({
    this.contacts,
    this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': ?pulumi.Input.mapOptionalInputValue<List<CertificateContactsContact>, List<Map<String, dynamic>>>(contacts, (value) => pulumi.Input.encodeList<CertificateContactsContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': ?keyVaultId,
    };
  }

  factory CertificateContactsState.fromMap(Map<String, dynamic> map) {
    return CertificateContactsState(
      contacts: (() { final guardedValue = map['contacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateContactsContact>(guardedValue, (value) => CertificateContactsContact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
