// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVTlbFlushDirect {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVTlbFlushDirect].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVTlbFlushDirect({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVTlbFlushDirect.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVTlbFlushDirect(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

