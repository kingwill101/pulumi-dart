// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackOutboundTrustCertificateAssociation resources.
class LocalRulestackOutboundTrustCertificateAssociationState {
  /// The ID of the Certificate to use as the Outbound Trust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Trust Certificate Association to be created.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [LocalRulestackOutboundTrustCertificateAssociationState].
  /// [certificateId] The ID of the Certificate to use as the Outbound Trust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Trust Certificate Association to be created.
  LocalRulestackOutboundTrustCertificateAssociationState({
    pulumi.Output<String>? certificateId,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
    };
  }

  factory LocalRulestackOutboundTrustCertificateAssociationState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackOutboundTrustCertificateAssociationState(
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
    );
  }
}

