// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesVmPort {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesVmPort].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesVmPort({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesVmPort.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesVmPort(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

