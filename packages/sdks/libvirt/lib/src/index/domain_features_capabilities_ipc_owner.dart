// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesIpcOwner {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesIpcOwner].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesIpcOwner({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesIpcOwner.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesIpcOwner(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

