// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVStimerDirect {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVStimerDirect].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVStimerDirect({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVStimerDirect.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVStimerDirect(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

