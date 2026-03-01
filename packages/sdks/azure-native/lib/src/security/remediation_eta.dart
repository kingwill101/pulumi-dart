// ignore_for_file: unused_element, unnecessary_cast


/// The ETA (estimated time of arrival) for remediation
class RemediationEta {
  /// ETA for remediation.
  final String eta;
  /// Justification for change of Eta.
  final String justification;

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
      eta: map['eta'] as String,
      justification: map['justification'] as String,
    );
  }
}

