// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysRawIo {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysRawIo].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysRawIo({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysRawIo.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysRawIo(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

