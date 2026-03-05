// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ETA (estimated time of arrival) for remediation
class RemediationEta {
  /// ETA for remediation.
  final pulumi.Input<String> eta;
  /// Justification for change of Eta.
  final pulumi.Input<String> justification;

  /// Creates a new [RemediationEta].
  /// [eta] ETA for remediation.
  /// [justification] Justification for change of Eta.
  RemediationEta({
    required this.eta,
    required this.justification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eta': eta,
      'justification': justification,
    };
  }

  factory RemediationEta.fromMap(Map<String, dynamic> map) {
    return RemediationEta(
      eta: pulumi.Input.fromValue(map['eta'] as String),
      justification: pulumi.Input.fromValue(map['justification'] as String),
    );
  }
}

