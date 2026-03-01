// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesFsetId {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesFsetId].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesFsetId({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesFsetId.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesFsetId(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

