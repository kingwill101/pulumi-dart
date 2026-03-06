// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate_policy_lifetime_action_action.dart';
import 'get_certificate_certificate_policy_lifetime_action_trigger.dart';

class GetCertificateCertificatePolicyLifetimeAction {
  /// A `action` block as defined below.
  final pulumi.Input<List<GetCertificateCertificatePolicyLifetimeActionAction>> actions;
  /// A `trigger` block as defined below.
  final pulumi.Input<List<GetCertificateCertificatePolicyLifetimeActionTrigger>> triggers;

  /// Creates a new [GetCertificateCertificatePolicyLifetimeAction].
  /// [actions] A `action` block as defined below.
  /// [triggers] A `trigger` block as defined below.
  const GetCertificateCertificatePolicyLifetimeAction({
    required this.actions,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetCertificateCertificatePolicyLifetimeActionAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetCertificateCertificatePolicyLifetimeActionAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggers': pulumi.Input.mapInputValue<List<GetCertificateCertificatePolicyLifetimeActionTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<GetCertificateCertificatePolicyLifetimeActionTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCertificateCertificatePolicyLifetimeAction.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyLifetimeAction(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificateCertificatePolicyLifetimeActionAction>(map['actions']!, (value) => GetCertificateCertificatePolicyLifetimeActionAction.fromMap((value as Map).cast<String, dynamic>()))),
      triggers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificateCertificatePolicyLifetimeActionTrigger>(map['triggers']!, (value) => GetCertificateCertificatePolicyLifetimeActionTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

