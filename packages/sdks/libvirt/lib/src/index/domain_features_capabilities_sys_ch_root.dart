// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysChRoot {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysChRoot].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysChRoot({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysChRoot.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysChRoot(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

