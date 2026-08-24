// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registrar_domains_result_registrant_contact.dart';
import 'get_registrar_domains_result_transfer_in.dart';

class GetRegistrarDomainsResult {
  /// Shows if a domain is available for transferring into Cloudflare Registrar.
  final pulumi.Input<bool> available;
  /// Indicates if the domain can be registered as a new domain.
  final pulumi.Input<bool> canRegister;
  /// Shows time of creation.
  final pulumi.Input<String> createdAt;
  /// Shows name of current registrar.
  final pulumi.Input<String> currentRegistrar;
  /// Shows when domain name registration expires.
  final pulumi.Input<String> expiresAt;
  /// Domain identifier.
  final pulumi.Input<String> id;
  /// Shows whether a registrar lock is in place for a domain.
  final pulumi.Input<bool> locked;
  /// Shows contact information for domain registrant.
  final pulumi.Input<GetRegistrarDomainsResultRegistrantContact> registrantContact;
  /// A comma-separated list of registry status codes. A full list of status codes can be found at [EPP Status Codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  final pulumi.Input<String> registryStatuses;
  /// Whether a particular TLD is currently supported by Cloudflare Registrar. Refer to [TLD Policies](https://www.cloudflare.com/tld-policies/) for a list of supported TLDs.
  final pulumi.Input<bool> supportedTld;
  /// Statuses for domain transfers into Cloudflare Registrar.
  final pulumi.Input<GetRegistrarDomainsResultTransferIn> transferIn;
  /// Last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetRegistrarDomainsResult].
  /// [available] Shows if a domain is available for transferring into Cloudflare Registrar.
  /// [canRegister] Indicates if the domain can be registered as a new domain.
  /// [createdAt] Shows time of creation.
  /// [currentRegistrar] Shows name of current registrar.
  /// [expiresAt] Shows when domain name registration expires.
  /// [id] Domain identifier.
  /// [locked] Shows whether a registrar lock is in place for a domain.
  /// [registrantContact] Shows contact information for domain registrant.
  /// [registryStatuses] A comma-separated list of registry status codes. A full list of status codes can be found at [EPP Status Codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en).
  /// [supportedTld] Whether a particular TLD is currently supported by Cloudflare Registrar. Refer to [TLD Policies](https://www.cloudflare.com/tld-policies/) for a list of supported TLDs.
  /// [transferIn] Statuses for domain transfers into Cloudflare Registrar.
  /// [updatedAt] Last updated.
  const GetRegistrarDomainsResult({
    required this.available,
    required this.canRegister,
    required this.createdAt,
    required this.currentRegistrar,
    required this.expiresAt,
    required this.id,
    required this.locked,
    required this.registrantContact,
    required this.registryStatuses,
    required this.supportedTld,
    required this.transferIn,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'canRegister': canRegister,
      'createdAt': createdAt,
      'currentRegistrar': currentRegistrar,
      'expiresAt': expiresAt,
      'id': id,
      'locked': locked,
      'registrantContact': pulumi.Input.mapInputValue<GetRegistrarDomainsResultRegistrantContact, Map<String, dynamic>>(registrantContact, (value) => value.toMap()),
      'registryStatuses': registryStatuses,
      'supportedTld': supportedTld,
      'transferIn': pulumi.Input.mapInputValue<GetRegistrarDomainsResultTransferIn, Map<String, dynamic>>(transferIn, (value) => value.toMap()),
      'updatedAt': updatedAt,
    };
  }

  factory GetRegistrarDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrarDomainsResult(
      available: pulumi.Input.fromValue(map['available'] as bool),
      canRegister: pulumi.Input.fromValue(map['canRegister'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      currentRegistrar: pulumi.Input.fromValue(map['currentRegistrar'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      registrantContact: pulumi.Input.fromValue(GetRegistrarDomainsResultRegistrantContact.fromMap((map['registrantContact']! as Map).cast<String, dynamic>())),
      registryStatuses: pulumi.Input.fromValue(map['registryStatuses'] as String),
      supportedTld: pulumi.Input.fromValue(map['supportedTld'] as bool),
      transferIn: pulumi.Input.fromValue(GetRegistrarDomainsResultTransferIn.fromMap((map['transferIn']! as Map).cast<String, dynamic>())),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
