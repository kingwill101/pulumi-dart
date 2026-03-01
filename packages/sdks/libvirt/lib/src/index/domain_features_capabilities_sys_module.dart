// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysModule {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysModule].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysModule({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysModule.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysModule(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

