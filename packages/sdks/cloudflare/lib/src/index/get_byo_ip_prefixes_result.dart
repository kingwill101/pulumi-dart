// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetByoIpPrefixesResult {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String> accountId;
  /// Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  final pulumi.Input<bool> advertised;
  /// Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  final pulumi.Input<String> advertisedModifiedAt;
  /// Approval state of the prefix (P = pending, V = active).
  final pulumi.Input<String> approved;
  /// Autonomous System Number (ASN) the prefix will be advertised under.
  final pulumi.Input<int> asn;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String> cidr;
  final pulumi.Input<String> createdAt;
  /// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  final pulumi.Input<bool> delegateLoaCreation;
  /// Description of the prefix.
  final pulumi.Input<String> description;
  /// Identifier of an IP Prefix.
  final pulumi.Input<String> id;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String> irrValidationState;
  /// Identifier for the uploaded LOA document.
  final pulumi.Input<String> loaDocumentId;
  final pulumi.Input<String> modifiedAt;
  /// Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  final pulumi.Input<bool> onDemandEnabled;
  /// Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  final pulumi.Input<bool> onDemandLocked;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String> ownershipValidationState;
  /// Token provided to demonstrate ownership of the prefix.
  final pulumi.Input<String> ownershipValidationToken;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String> rpkiValidationState;

  /// Creates a new [GetByoIpPrefixesResult].
  /// [accountId] Identifier of a Cloudflare account.
  /// [advertised] Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  /// [advertisedModifiedAt] Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  /// [approved] Approval state of the prefix (P = pending, V = active).
  /// [asn] Autonomous System Number (ASN) the prefix will be advertised under.
  /// [cidr] IP Prefix in Classless Inter-Domain Routing format.
  /// [createdAt] Required.
  /// [delegateLoaCreation] Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  /// [description] Description of the prefix.
  /// [id] Identifier of an IP Prefix.
  /// [irrValidationState] State of one kind of validation for an IP prefix.
  /// [loaDocumentId] Identifier for the uploaded LOA document.
  /// [modifiedAt] Required.
  /// [onDemandEnabled] Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  /// [onDemandLocked] Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  /// [ownershipValidationState] State of one kind of validation for an IP prefix.
  /// [ownershipValidationToken] Token provided to demonstrate ownership of the prefix.
  /// [rpkiValidationState] State of one kind of validation for an IP prefix.
  const GetByoIpPrefixesResult({
    required this.accountId,
    required this.advertised,
    required this.advertisedModifiedAt,
    required this.approved,
    required this.asn,
    required this.cidr,
    required this.createdAt,
    required this.delegateLoaCreation,
    required this.description,
    required this.id,
    required this.irrValidationState,
    required this.loaDocumentId,
    required this.modifiedAt,
    required this.onDemandEnabled,
    required this.onDemandLocked,
    required this.ownershipValidationState,
    required this.ownershipValidationToken,
    required this.rpkiValidationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'advertised': advertised,
      'advertisedModifiedAt': advertisedModifiedAt,
      'approved': approved,
      'asn': asn,
      'cidr': cidr,
      'createdAt': createdAt,
      'delegateLoaCreation': delegateLoaCreation,
      'description': description,
      'id': id,
      'irrValidationState': irrValidationState,
      'loaDocumentId': loaDocumentId,
      'modifiedAt': modifiedAt,
      'onDemandEnabled': onDemandEnabled,
      'onDemandLocked': onDemandLocked,
      'ownershipValidationState': ownershipValidationState,
      'ownershipValidationToken': ownershipValidationToken,
      'rpkiValidationState': rpkiValidationState,
    };
  }

  factory GetByoIpPrefixesResult.fromMap(Map<String, dynamic> map) {
    return GetByoIpPrefixesResult(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      advertised: pulumi.Input.fromValue(map['advertised'] as bool),
      advertisedModifiedAt: pulumi.Input.fromValue(map['advertisedModifiedAt'] as String),
      approved: pulumi.Input.fromValue(map['approved'] as String),
      asn: pulumi.Input.fromValue((map['asn'] as num).toInt()),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      delegateLoaCreation: pulumi.Input.fromValue(map['delegateLoaCreation'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      irrValidationState: pulumi.Input.fromValue(map['irrValidationState'] as String),
      loaDocumentId: pulumi.Input.fromValue(map['loaDocumentId'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      onDemandEnabled: pulumi.Input.fromValue(map['onDemandEnabled'] as bool),
      onDemandLocked: pulumi.Input.fromValue(map['onDemandLocked'] as bool),
      ownershipValidationState: pulumi.Input.fromValue(map['ownershipValidationState'] as String),
      ownershipValidationToken: pulumi.Input.fromValue(map['ownershipValidationToken'] as String),
      rpkiValidationState: pulumi.Input.fromValue(map['rpkiValidationState'] as String),
    );
  }
}
