// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_outbound_untrust_certificate_association_local_rulestack_outbound_untrust_certificate_association_args_doc}
/// The set of arguments for LocalRulestackOutboundUntrustCertificateAssociation.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_outbound_untrust_certificate_association_local_rulestack_outbound_untrust_certificate_association_args_doc}
class LocalRulestackOutboundUntrustCertificateAssociationArgs {
  /// The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  final pulumi.Input<String> certificateId;

  /// Creates a new [LocalRulestackOutboundUntrustCertificateAssociationArgs].
  /// [certificateId] The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  LocalRulestackOutboundUntrustCertificateAssociationArgs({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'certificateId': certificateId};
  }

  factory LocalRulestackOutboundUntrustCertificateAssociationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LocalRulestackOutboundUntrustCertificateAssociationArgs(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
