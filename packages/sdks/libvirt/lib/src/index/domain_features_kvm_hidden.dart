// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesKvmHidden {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesKvmHidden].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesKvmHidden({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesKvmHidden.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmHidden(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

