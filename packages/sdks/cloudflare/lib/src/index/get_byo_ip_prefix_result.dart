// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getByoIpPrefix.
class GetByoIpPrefixResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  final bool? advertised;
  /// Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  final String? advertisedModifiedAt;
  /// Approval state of the prefix (P = pending, V = approved). Approval does not advertise the prefix or activate traffic.
  final String? approved;
  /// Autonomous System Number (ASN) the prefix will be advertised under. Use 13335 for Cloudflare's ASN, or your own ASN as an integer without the AS prefix. The IRR route and RPKI ROA must authorize this ASN.
  final int? asn;
  /// State of ASN ownership validation for a customer-owned Autonomous System Number (ASN). Returned when an ASN ownership validation result exists. Omitted when validation does not apply, such as for Cloudflare-owned ASNs. Verification is reused for prefixes with the same account and ASN. Refer to [ASN ownership validation states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#asn-ownership-validation) for state meanings and resolutions.
  /// Available values: "pending", "valid", "missing", "invalid".
  final String? asnOwnershipValidationState;
  /// State of Autonomous System Provider Authorization (ASPA) validation for a customer-owned ASN. Returned when an ASPA validation result exists. Publishing an ASPA is optional. A published ASPA must authorize AS13335 as a provider. An invalid result blocks approval. If omitted, no ASPA validation result is available. Omission does not indicate successful validation or confirm that no ASPA exists. Refer to [ASPA validation states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#aspa-validation) for state meanings and resolutions, and [ASPA authorization](https://developers.cloudflare.com/byoip/concepts/route-filtering-rpki/#aspa-authorization) for publication guidance.
  /// Available values: "pending", "valid", "invalid".
  final String? aspaValidationState;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final String? cidr;
  final String? createdAt;
  /// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  final bool? delegateLoaCreation;
  /// Description of the prefix.
  final String? description;
  /// Identifier of an IP Prefix.
  final String? id;
  /// State of one kind of validation for an IP prefix.
  final String? irrValidationState;
  /// Identifier for the uploaded LOA document.
  final String? loaDocumentId;
  final String? modifiedAt;
  /// Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  final bool? onDemandEnabled;
  /// Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  final bool? onDemandLocked;
  /// State of one kind of validation for an IP prefix.
  final String? ownershipValidationState;
  /// Token used to verify ownership of the prefix and, when applicable, its ASN. Use the same token for both checks. Refer to the [BYOIP onboarding guide](https://developers.cloudflare.com/byoip/get-started/) for verification instructions.
  final String? ownershipValidationToken;
  /// Identifier of an IP Prefix.
  final String? prefixId;
  /// State of one kind of validation for an IP prefix.
  final String? rpkiValidationState;

  /// Creates a new [GetByoIpPrefixResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [advertised] Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  /// [advertisedModifiedAt] Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  /// [approved] Approval state of the prefix (P = pending, V = approved). Approval does not advertise the prefix or activate traffic.
  /// [asn] Autonomous System Number (ASN) the prefix will be advertised under. Use 13335 for Cloudflare's ASN, or your own ASN as an integer without the AS prefix. The IRR route and RPKI ROA must authorize this ASN.
  /// [asnOwnershipValidationState] State of ASN ownership validation for a customer-owned Autonomous System Number (ASN). Returned when an ASN ownership validation result exists. Omitted when validation does not apply, such as for Cloudflare-owned ASNs. Verification is reused for prefixes with the same account and ASN. Refer to [ASN ownership validation states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#asn-ownership-validation) for state meanings and resolutions.
  /// [aspaValidationState] State of Autonomous System Provider Authorization (ASPA) validation for a customer-owned ASN. Returned when an ASPA validation result exists. Publishing an ASPA is optional. A published ASPA must authorize AS13335 as a provider. An invalid result blocks approval. If omitted, no ASPA validation result is available. Omission does not indicate successful validation or confirm that no ASPA exists. Refer to [ASPA validation states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#aspa-validation) for state meanings and resolutions, and [ASPA authorization](https://developers.cloudflare.com/byoip/concepts/route-filtering-rpki/#aspa-authorization) for publication guidance.
  /// [cidr] IP Prefix in Classless Inter-Domain Routing format.
  /// [createdAt] Optional.
  /// [delegateLoaCreation] Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  /// [description] Description of the prefix.
  /// [id] Identifier of an IP Prefix.
  /// [irrValidationState] State of one kind of validation for an IP prefix.
  /// [loaDocumentId] Identifier for the uploaded LOA document.
  /// [modifiedAt] Optional.
  /// [onDemandEnabled] Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  /// [onDemandLocked] Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  /// [ownershipValidationState] State of one kind of validation for an IP prefix.
  /// [ownershipValidationToken] Token used to verify ownership of the prefix and, when applicable, its ASN. Use the same token for both checks. Refer to the [BYOIP onboarding guide](https://developers.cloudflare.com/byoip/get-started/) for verification instructions.
  /// [prefixId] Identifier of an IP Prefix.
  /// [rpkiValidationState] State of one kind of validation for an IP prefix.
  const GetByoIpPrefixResult({
    this.accountId,
    this.advertised,
    this.advertisedModifiedAt,
    this.approved,
    this.asn,
    this.asnOwnershipValidationState,
    this.aspaValidationState,
    this.cidr,
    this.createdAt,
    this.delegateLoaCreation,
    this.description,
    this.id,
    this.irrValidationState,
    this.loaDocumentId,
    this.modifiedAt,
    this.onDemandEnabled,
    this.onDemandLocked,
    this.ownershipValidationState,
    this.ownershipValidationToken,
    this.prefixId,
    this.rpkiValidationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'advertised': ?advertised,
      'advertisedModifiedAt': ?advertisedModifiedAt,
      'approved': ?approved,
      'asn': ?asn,
      'asnOwnershipValidationState': ?asnOwnershipValidationState,
      'aspaValidationState': ?aspaValidationState,
      'cidr': ?cidr,
      'createdAt': ?createdAt,
      'delegateLoaCreation': ?delegateLoaCreation,
      'description': ?description,
      'id': ?id,
      'irrValidationState': ?irrValidationState,
      'loaDocumentId': ?loaDocumentId,
      'modifiedAt': ?modifiedAt,
      'onDemandEnabled': ?onDemandEnabled,
      'onDemandLocked': ?onDemandLocked,
      'ownershipValidationState': ?ownershipValidationState,
      'ownershipValidationToken': ?ownershipValidationToken,
      'prefixId': ?prefixId,
      'rpkiValidationState': ?rpkiValidationState,
    };
  }

  factory GetByoIpPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetByoIpPrefixResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      advertised: (() { final guardedValue = map['advertised']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      advertisedModifiedAt: (() { final guardedValue = map['advertisedModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      approved: (() { final guardedValue = map['approved']; if (guardedValue == null) return null; return guardedValue as String; })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      asnOwnershipValidationState: (() { final guardedValue = map['asnOwnershipValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aspaValidationState: (() { final guardedValue = map['aspaValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      delegateLoaCreation: (() { final guardedValue = map['delegateLoaCreation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      irrValidationState: (() { final guardedValue = map['irrValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loaDocumentId: (() { final guardedValue = map['loaDocumentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onDemandEnabled: (() { final guardedValue = map['onDemandEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      onDemandLocked: (() { final guardedValue = map['onDemandLocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ownershipValidationState: (() { final guardedValue = map['ownershipValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownershipValidationToken: (() { final guardedValue = map['ownershipValidationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixId: (() { final guardedValue = map['prefixId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rpkiValidationState: (() { final guardedValue = map['rpkiValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
