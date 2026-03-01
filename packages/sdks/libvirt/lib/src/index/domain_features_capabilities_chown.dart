// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesChown {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesChown].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesChown({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesChown.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesChown(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

