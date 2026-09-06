import 'package:pulumi/pulumi.dart' as pulumi;

/// The state.
enum SubscriptionTransitioningState implements pulumi.PulumiEnum<String> {
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
  @override
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
