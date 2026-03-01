// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesKvmPvipi {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesKvmPvipi].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesKvmPvipi({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesKvmPvipi.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmPvipi(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

