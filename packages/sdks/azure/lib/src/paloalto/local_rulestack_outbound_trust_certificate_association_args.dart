// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_outbound_trust_certificate_association_local_rulestack_outbound_trust_certificate_association_args_doc}
/// The set of arguments for LocalRulestackOutboundTrustCertificateAssociation.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_outbound_trust_certificate_association_local_rulestack_outbound_trust_certificate_association_args_doc}
class LocalRulestackOutboundTrustCertificateAssociationArgs {
  /// The ID of the Certificate to use as the Outbound Trust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Trust Certificate Association to be created.
  final pulumi.Input<String> certificateId;

  /// Creates a new [LocalRulestackOutboundTrustCertificateAssociationArgs].
  /// [certificateId] The ID of the Certificate to use as the Outbound Trust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Trust Certificate Association to be created.
  LocalRulestackOutboundTrustCertificateAssociationArgs({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory LocalRulestackOutboundTrustCertificateAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackOutboundTrustCertificateAssociationArgs(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}

