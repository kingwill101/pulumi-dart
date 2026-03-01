// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesSmm {
  /// Configures the state of the SMM feature, indicating whether it is active.
  final String? state;
  /// Configures the Memory Type Range Register (MTRR) for SMM, providing control over memory regions.
  final double? tseg;
  /// Sets the unit of the TSEG (Trusted Secure Environment Group) size for SMM configuration.
  final String? tsegUnit;

  /// Creates a new [DomainFeaturesSmm].
  /// [state] Configures the state of the SMM feature, indicating whether it is active.
  /// [tseg] Configures the Memory Type Range Register (MTRR) for SMM, providing control over memory regions.
  /// [tsegUnit] Sets the unit of the TSEG (Trusted Secure Environment Group) size for SMM configuration.
  DomainFeaturesSmm({
    this.state,
    this.tseg,
    this.tsegUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'tseg': ?tseg,
      'tsegUnit': ?tsegUnit,
    };
  }

  factory DomainFeaturesSmm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesSmm(
      state: map['state'] == null ? null : map['state'] as String,
      tseg: map['tseg'] == null ? null : map['tseg'] as double,
      tsegUnit: map['tsegUnit'] == null ? null : map['tsegUnit'] as String,
    );
  }
}

