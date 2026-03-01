// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesWakeAlarm {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesWakeAlarm].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesWakeAlarm({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesWakeAlarm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesWakeAlarm(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

