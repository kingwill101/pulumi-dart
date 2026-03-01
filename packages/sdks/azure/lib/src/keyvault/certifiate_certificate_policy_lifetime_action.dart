// ignore_for_file: unused_element, unnecessary_cast

import 'certifiate_certificate_policy_lifetime_action_action.dart';
import 'certifiate_certificate_policy_lifetime_action_trigger.dart';

class CertifiateCertificatePolicyLifetimeAction {
  /// A `action` block as defined below.
  final CertifiateCertificatePolicyLifetimeActionAction action;
  /// A `trigger` block as defined below.
  final CertifiateCertificatePolicyLifetimeActionTrigger trigger;

  /// Creates a new [CertifiateCertificatePolicyLifetimeAction].
  /// [action] A `action` block as defined below.
  /// [trigger] A `trigger` block as defined below.
  CertifiateCertificatePolicyLifetimeAction({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory CertifiateCertificatePolicyLifetimeAction.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyLifetimeAction(
      action: CertifiateCertificatePolicyLifetimeActionAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: CertifiateCertificatePolicyLifetimeActionTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

