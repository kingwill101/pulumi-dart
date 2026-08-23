// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackOutboundUntrustCertificateAssociation resources.
class LocalRulestackOutboundUntrustCertificateAssociationState {
  /// The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [LocalRulestackOutboundUntrustCertificateAssociationState].
  /// [certificateId] The ID of the Certificate to use as the Outbound Untrust Certificate. Changing this forces a new Palo Alto Networks Rulestack Outbound Untrust Certificate Association to be created.
  const LocalRulestackOutboundUntrustCertificateAssociationState({
    this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
    };
  }

  factory LocalRulestackOutboundUntrustCertificateAssociationState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackOutboundUntrustCertificateAssociationState(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
