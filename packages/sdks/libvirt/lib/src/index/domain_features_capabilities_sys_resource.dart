// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysResource {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysResource].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysResource({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysResource.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysResource(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

