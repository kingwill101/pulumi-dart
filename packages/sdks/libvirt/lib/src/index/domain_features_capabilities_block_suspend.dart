// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesBlockSuspend {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesBlockSuspend].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesBlockSuspend({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesBlockSuspend.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesBlockSuspend(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

