// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSetFCap {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSetFCap].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSetFCap({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSetFCap.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSetFCap(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

