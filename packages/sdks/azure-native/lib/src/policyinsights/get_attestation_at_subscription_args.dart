// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_attestation_at_subscription_args_doc}
/// Arguments for getAttestationAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_attestation_at_subscription_args_doc}
class GetAttestationAtSubscriptionArgs {
  /// The name of the attestation.
  final pulumi.Input<String> attestationName;

  /// Creates a new [GetAttestationAtSubscriptionArgs].
  /// [attestationName] The name of the attestation.
  GetAttestationAtSubscriptionArgs({required this.attestationName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attestationName': attestationName};
  }

  factory GetAttestationAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestationAtSubscriptionArgs(
      attestationName: pulumi.Input.fromValue(map['attestationName'] as String),
    );
  }
}
