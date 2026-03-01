// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesRas {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesRas].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesRas({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesRas.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesRas(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

