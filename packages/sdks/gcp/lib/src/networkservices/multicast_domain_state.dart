// ignore_for_file: unused_element, unnecessary_cast


class MulticastDomainState {
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

  /// Creates a new [MulticastDomainState].
  /// [state] (Output)
  MulticastDomainState({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory MulticastDomainState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

