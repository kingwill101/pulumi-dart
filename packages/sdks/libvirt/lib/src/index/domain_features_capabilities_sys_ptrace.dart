// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysPTrace {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysPTrace].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysPTrace({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysPTrace.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysPTrace(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

