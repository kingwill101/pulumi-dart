// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesNetBindService {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesNetBindService].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesNetBindService({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesNetBindService.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesNetBindService(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

