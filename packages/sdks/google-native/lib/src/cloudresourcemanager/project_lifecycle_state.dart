/// The Project lifecycle state. Read-only.
enum ProjectLifecycleState {
  lifecycleStateUnspecified("LIFECYCLE_STATE_UNSPECIFIED"),
  active("ACTIVE"),
  deleteRequested("DELETE_REQUESTED"),
  deleteInProgress("DELETE_IN_PROGRESS");

  const ProjectLifecycleState(this.wireValue);
  final String wireValue;

  static ProjectLifecycleState fromValue(String value) {
    for (final item in ProjectLifecycleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectLifecycleState value: $value');
  }
}
