// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getByoIpPrefix.
class GetByoIpPrefixResult {
  /// Identifier of a Cloudflare account.
  final String? accountId;
  /// Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  final bool? advertised;
  /// Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  final String? advertisedModifiedAt;
  /// Approval state of the prefix (P = pending, V = active).
  final String? approved;
  /// Autonomous System Number (ASN) the prefix will be advertised under.
  final int? asn;
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
  /// Token provided to demonstrate ownership of the prefix.
  final String? ownershipValidationToken;
  /// Identifier of an IP Prefix.
  final String? prefixId;
  /// State of one kind of validation for an IP prefix.
  final String? rpkiValidationState;

  /// Creates a new [GetByoIpPrefixResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [advertised] Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  /// [advertisedModifiedAt] Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  /// [approved] Approval state of the prefix (P = pending, V = active).
  /// [asn] Autonomous System Number (ASN) the prefix will be advertised under.
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
  /// [ownershipValidationToken] Token provided to demonstrate ownership of the prefix.
  /// [prefixId] Identifier of an IP Prefix.
  /// [rpkiValidationState] State of one kind of validation for an IP prefix.
  const GetByoIpPrefixResult({
    this.accountId,
    this.advertised,
    this.advertisedModifiedAt,
    this.approved,
    this.asn,
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
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
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
