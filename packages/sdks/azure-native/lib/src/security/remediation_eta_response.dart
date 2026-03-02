// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ETA (estimated time of arrival) for remediation
class RemediationEtaResponse {
  /// ETA for remediation.
  final pulumi.Input<String> eta;
  /// Justification for change of Eta.
  final pulumi.Input<String> justification;

  /// Creates a new [RemediationEtaResponse].
  /// [eta] ETA for remediation.
  /// [justification] Justification for change of Eta.
  RemediationEtaResponse({
    required this.eta,
    required this.justification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eta': eta,
      'justification': justification,
    };
  }

  factory RemediationEtaResponse.fromMap(Map<String, dynamic> map) {
    return RemediationEtaResponse(
      eta: (map['eta'] as String).input(),
      justification: (map['justification'] as String).input(),
    );
  }
}

