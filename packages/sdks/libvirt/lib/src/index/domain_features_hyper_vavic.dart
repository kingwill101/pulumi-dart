// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVAvic {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVAvic].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVAvic({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVAvic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVAvic(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

