// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHtm {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHtm].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHtm({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHtm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHtm(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

