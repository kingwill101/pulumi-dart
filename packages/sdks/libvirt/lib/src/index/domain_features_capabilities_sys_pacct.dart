// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysPAcct {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysPAcct].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysPAcct({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysPAcct.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysPAcct(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

