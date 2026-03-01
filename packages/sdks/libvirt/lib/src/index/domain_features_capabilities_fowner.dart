// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesFowner {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesFowner].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesFowner({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesFowner.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesFowner(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

