// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_contacts_contact.dart';

/// {@template pulumi_keyvault_certificate_contacts_certificate_contacts_args_doc}
/// The set of arguments for CertificateContacts.
/// {@endtemplate}
/// {@macro pulumi_keyvault_certificate_contacts_certificate_contacts_args_doc}
class CertificateContactsArgs {
  /// One or more `contact` blocks as defined below.
  final pulumi.Input<List<CertificateContactsContact>>? contacts;

  /// The ID of the Key Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [CertificateContactsArgs].
  /// [contacts] One or more `contact` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault. Changing this forces a new resource to be created.
  CertificateContactsArgs({this.contacts, required this.keyVaultId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateContactsContact>,
            List<Map<String, dynamic>>
          >(
            contacts,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateContactsContact,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keyVaultId': keyVaultId,
    };
  }

  factory CertificateContactsArgs.fromMap(Map<String, dynamic> map) {
    return CertificateContactsArgs(
      contacts: (() {
        final guardedValue = map['contacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateContactsContact>(
            guardedValue,
            (value) => CertificateContactsContact.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}
