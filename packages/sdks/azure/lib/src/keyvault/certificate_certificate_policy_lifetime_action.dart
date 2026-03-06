// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_policy_lifetime_action_action.dart';
import 'certificate_certificate_policy_lifetime_action_trigger.dart';

class CertificateCertificatePolicyLifetimeAction {
  /// A `action` block as defined below.
  final pulumi.Input<CertificateCertificatePolicyLifetimeActionAction> action;
  /// A `trigger` block as defined below.
  final pulumi.Input<CertificateCertificatePolicyLifetimeActionTrigger> trigger;

  /// Creates a new [CertificateCertificatePolicyLifetimeAction].
  /// [action] A `action` block as defined below.
  /// [trigger] A `trigger` block as defined below.
  const CertificateCertificatePolicyLifetimeAction({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<CertificateCertificatePolicyLifetimeActionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': pulumi.Input.mapInputValue<CertificateCertificatePolicyLifetimeActionTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory CertificateCertificatePolicyLifetimeAction.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyLifetimeAction(
      action: pulumi.Input.fromValue(CertificateCertificatePolicyLifetimeActionAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      trigger: pulumi.Input.fromValue(CertificateCertificatePolicyLifetimeActionTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

