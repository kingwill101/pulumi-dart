// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ByoIpPrefix resources.
class ByoIpPrefixState {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  final pulumi.Input<bool?>? advertised;
  /// Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  final pulumi.Input<String?>? advertisedModifiedAt;
  /// Approval state of the prefix (P = pending, V = active).
  final pulumi.Input<String?>? approved;
  /// Autonomous System Number (ASN) the prefix will be advertised under.
  final pulumi.Input<int?>? asn;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String?>? cidr;
  final pulumi.Input<String?>? createdAt;
  /// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  final pulumi.Input<bool?>? delegateLoaCreation;
  /// Description of the prefix.
  final pulumi.Input<String?>? description;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String?>? irrValidationState;
  /// Identifier for the uploaded LOA document.
  final pulumi.Input<String?>? loaDocumentId;
  final pulumi.Input<String?>? modifiedAt;
  /// Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  final pulumi.Input<bool?>? onDemandEnabled;
  /// Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  final pulumi.Input<bool?>? onDemandLocked;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String?>? ownershipValidationState;
  /// Token provided to demonstrate ownership of the prefix.
  final pulumi.Input<String?>? ownershipValidationToken;
  /// State of one kind of validation for an IP prefix.
  final pulumi.Input<String?>? rpkiValidationState;

  /// Creates a new [ByoIpPrefixState].
  /// [accountId] Identifier of a Cloudflare account.
  /// [advertised] Prefix advertisement status to the Internet. This field is only not 'null' if on demand is enabled.
  /// [advertisedModifiedAt] Last time the advertisement status was changed. This field is only not 'null' if on demand is enabled.
  /// [approved] Approval state of the prefix (P = pending, V = active).
  /// [asn] Autonomous System Number (ASN) the prefix will be advertised under.
  /// [cidr] IP Prefix in Classless Inter-Domain Routing format.
  /// [createdAt] Optional.
  /// [delegateLoaCreation] Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  /// [description] Description of the prefix.
  /// [irrValidationState] State of one kind of validation for an IP prefix.
  /// [loaDocumentId] Identifier for the uploaded LOA document.
  /// [modifiedAt] Optional.
  /// [onDemandEnabled] Whether advertisement of the prefix to the Internet may be dynamically enabled or disabled.
  /// [onDemandLocked] Whether advertisement status of the prefix is locked, meaning it cannot be changed.
  /// [ownershipValidationState] State of one kind of validation for an IP prefix.
  /// [ownershipValidationToken] Token provided to demonstrate ownership of the prefix.
  /// [rpkiValidationState] State of one kind of validation for an IP prefix.
  const ByoIpPrefixState({
    this.accountId,
    this.advertised,
    this.advertisedModifiedAt,
    this.approved,
    this.asn,
    this.cidr,
    this.createdAt,
    this.delegateLoaCreation,
    this.description,
    this.irrValidationState,
    this.loaDocumentId,
    this.modifiedAt,
    this.onDemandEnabled,
    this.onDemandLocked,
    this.ownershipValidationState,
    this.ownershipValidationToken,
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
      'irrValidationState': ?irrValidationState,
      'loaDocumentId': ?loaDocumentId,
      'modifiedAt': ?modifiedAt,
      'onDemandEnabled': ?onDemandEnabled,
      'onDemandLocked': ?onDemandLocked,
      'ownershipValidationState': ?ownershipValidationState,
      'ownershipValidationToken': ?ownershipValidationToken,
      'rpkiValidationState': ?rpkiValidationState,
    };
  }

  factory ByoIpPrefixState.fromMap(Map<String, dynamic> map) {
    return ByoIpPrefixState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      advertised: (() { final guardedValue = map['advertised']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      advertisedModifiedAt: (() { final guardedValue = map['advertisedModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approved: (() { final guardedValue = map['approved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegateLoaCreation: (() { final guardedValue = map['delegateLoaCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      irrValidationState: (() { final guardedValue = map['irrValidationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaDocumentId: (() { final guardedValue = map['loaDocumentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onDemandEnabled: (() { final guardedValue = map['onDemandEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      onDemandLocked: (() { final guardedValue = map['onDemandLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ownershipValidationState: (() { final guardedValue = map['ownershipValidationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipValidationToken: (() { final guardedValue = map['ownershipValidationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpkiValidationState: (() { final guardedValue = map['rpkiValidationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
