// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesKill {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesKill].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesKill({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesKill.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesKill(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

