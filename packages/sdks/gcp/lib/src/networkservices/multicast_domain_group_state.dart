// ignore_for_file: unused_element, unnecessary_cast


class MulticastDomainGroupState {
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final String? state;

  /// Creates a new [MulticastDomainGroupState].
  /// [state] (Output)
  MulticastDomainGroupState({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory MulticastDomainGroupState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainGroupState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

