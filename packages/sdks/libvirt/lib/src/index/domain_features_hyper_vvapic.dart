// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVVapic {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVVapic].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVVapic({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVVapic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVVapic(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

