// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackOutboundUntrustCertificateAssociation resources.
class LocalRulestackOutboundUntrustCertificateAssociationState {
  /// The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [LocalRulestackOutboundUntrustCertificateAssociationState].
  /// [certificateId] The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  LocalRulestackOutboundUntrustCertificateAssociationState({
    pulumi.Output<String>? certificateId,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
    };
  }

  factory LocalRulestackOutboundUntrustCertificateAssociationState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackOutboundUntrustCertificateAssociationState(
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
    );
  }
}

