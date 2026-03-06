// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certifiate_certificate_policy_lifetime_action_action.dart';
import 'certifiate_certificate_policy_lifetime_action_trigger.dart';

class CertifiateCertificatePolicyLifetimeAction {
  /// A `action` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicyLifetimeActionAction> action;
  /// A `trigger` block as defined below.
  final pulumi.Input<CertifiateCertificatePolicyLifetimeActionTrigger> trigger;

  /// Creates a new [CertifiateCertificatePolicyLifetimeAction].
  /// [action] A `action` block as defined below.
  /// [trigger] A `trigger` block as defined below.
  const CertifiateCertificatePolicyLifetimeAction({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<CertifiateCertificatePolicyLifetimeActionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': pulumi.Input.mapInputValue<CertifiateCertificatePolicyLifetimeActionTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory CertifiateCertificatePolicyLifetimeAction.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyLifetimeAction(
      action: pulumi.Input.fromValue(CertifiateCertificatePolicyLifetimeActionAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      trigger: pulumi.Input.fromValue(CertifiateCertificatePolicyLifetimeActionTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

