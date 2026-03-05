/// The state.
enum SubscriptionTransitioningState {
  registered("Registered"),
  unregistered("Unregistered"),
  warned("Warned"),
  suspended("Suspended"),
  deleted("Deleted"),
  warnedToRegistered("WarnedToRegistered"),
  warnedToSuspended("WarnedToSuspended"),
  warnedToDeleted("WarnedToDeleted"),
  warnedToUnregistered("WarnedToUnregistered"),
  suspendedToRegistered("SuspendedToRegistered"),
  suspendedToWarned("SuspendedToWarned"),
  suspendedToDeleted("SuspendedToDeleted"),
  suspendedToUnregistered("SuspendedToUnregistered");

  const SubscriptionTransitioningState(this.wireValue);
  final String wireValue;

  static SubscriptionTransitioningState fromValue(String value) {
    for (final item in SubscriptionTransitioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionTransitioningState value: $value');
  }
}

