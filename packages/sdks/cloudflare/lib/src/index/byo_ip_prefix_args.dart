// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_byo_ip_prefix_byo_ip_prefix_args_doc}
/// The set of arguments for ByoIpPrefix.
/// {@endtemplate}
/// {@macro pulumi_index_byo_ip_prefix_byo_ip_prefix_args_doc}
class ByoIpPrefixArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String> accountId;
  /// Autonomous System Number (ASN) the prefix will be advertised under.
  final pulumi.Input<int> asn;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String> cidr;
  /// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  final pulumi.Input<bool?>? delegateLoaCreation;
  /// Description of the prefix.
  final pulumi.Input<String?>? description;
  /// Identifier for the uploaded LOA document.
  final pulumi.Input<String?>? loaDocumentId;

  /// Creates a new [ByoIpPrefixArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [asn] Autonomous System Number (ASN) the prefix will be advertised under.
  /// [cidr] IP Prefix in Classless Inter-Domain Routing format.
  /// [delegateLoaCreation] Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
  /// [description] Description of the prefix.
  /// [loaDocumentId] Identifier for the uploaded LOA document.
  const ByoIpPrefixArgs({
    required this.accountId,
    required this.asn,
    required this.cidr,
    this.delegateLoaCreation,
    this.description,
    this.loaDocumentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'asn': asn,
      'cidr': cidr,
      'delegateLoaCreation': ?delegateLoaCreation,
      'description': ?description,
      'loaDocumentId': ?loaDocumentId,
    };
  }

  factory ByoIpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return ByoIpPrefixArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      asn: pulumi.Input.fromValue((map['asn'] as num).toInt()),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      delegateLoaCreation: (() { final guardedValue = map['delegateLoaCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaDocumentId: (() { final guardedValue = map['loaDocumentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
